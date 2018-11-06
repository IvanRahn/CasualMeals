class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show]
  # before_action :set_amount, only: [:show, :index, :create]

  # before_action :add

  def index
    @transactions = Transaction.where(user_id: current_user.id)
<<<<<<< HEAD
=======

    if current_user.chef?
      @meals = Meal.where(chef_id: current_user.chef.id)
      @meal_transactions = MealTransaction.where(meal_id: @meals.ids)
      
      @total_revenue = @meal_transactions.sum(:sale_price)
      
    end

>>>>>>> origin/transactionviewjames
  end

  def new
    @transaction = Transaction.new
    session[:meal_id] = params[:meal_id]
  end

  def show
  end

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
    MealTransaction.create(meal_id: session[:meal_id].to_i, transaction_id: @transaction.id, sale_price: @amount)
    session[:transaction_id] = @transaction.id
  end

  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to transactions_path, notice: "Meal was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def process_payment
    # @amount = amount_to_be_charged
    @amount = set_amount
    customer = Stripe::Customer.retrieve(current_user.stripe_id)
    customer.source = params[:stripeToken]
    customer.save
    charge = Stripe::Charge.create(
      :customer => current_user.stripe_id,
      :amount => @amount,
      :description => "Rails Stripe customer",
      :currency => "usd",
      # :source => params[:stripeToken],

    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to "/"
  end

  private

  # def add
  #   @transaction = Transaction.find(session[:transaction_id])
  # end
  def set_amount
    meal = Meal.find(session[:meal_id])
    @amount = meal.price * 100
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:description, :delivery_address, :user_id, :meal_id, :stipe_id)
  end

  # def amount_to_be_charged
  #   @items = MealTransaction.where(transaction_id: session[:transaction_id])
  #   @total = @items.inject(0) { |sum, i| sum += i.meal.price }

  #   @total
  # end
end
