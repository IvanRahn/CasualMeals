class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show]
# show user's transactions
  def index
    @transactions = Transaction.where(user_id: current_user.id) 

    if current_user.chef?
      @meals = Meal.where(chef_id: current_user.chef.id)
      @meal_transactions = MealTransaction.where(meal_id: @meals.ids)
      @total_sales = @meal_transactions.sum(:sale_price)
    end
  end
# take meal_id from params
  def new
    @transaction = Transaction.new
    session[:meal_id] = params[:meal_id]
    @amount = set_amount
  end

  def show
  end
# create transaction and process payment
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user_id = current_user.id
    process_payment
    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: "Transaction created." }
      else
        format.html { render :new }
      end
    end
    # create meal_transaction
    MealTransaction.create(meal_id: session[:meal_id].to_i, transaction_id: @transaction.id, sale_price: @amount)
  end
# stripe
  def process_payment
    @amount = set_amount
    customer = Stripe::Customer.retrieve(current_user.stripe_id)
    customer.source = params[:stripeToken]
    customer.save
    charge = Stripe::Charge.create(
      :customer => current_user.stripe_id,
      :amount => @amount*100,
      :description => "Rails Stripe customer",
      :currency => "usd",
      # :source => params[:stripeToken]

    )
    @transaction.charge_id = charge.id
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to "/"
  end

  private
# set amount for stripe
  def set_amount
    meal = Meal.find(session[:meal_id])
    meal.price 
  end
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:description, :delivery_address, :user_id, :meal_id)
  end

end
