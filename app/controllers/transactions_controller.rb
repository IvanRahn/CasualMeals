class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show]
  # before_action :add

  def index
    @transactions = Transaction.all
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
    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: "Transaction created." }
      else
        format.html { render :new }
      end
    end
    MealTransaction.create(meal_id: session[:meal_id].to_i, transaction_id: @transaction.id)
    session[:transaction_id] = @transaction.id
  end

<<<<<<< HEAD
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to transactions_path, notice: "Meal was successfully updated." }
      else
        format.html { render :edit }
      end
=======

  def charge
  
    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @total,
    :description => 'Rails Stripe customer',
    :currency    => 'aud'
    # :source => params[:stripeToken]
    )

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to meals_path
>>>>>>> origin/stripe-subbranch-transactions
    end
  end

  # def calculate
  #   @order = Transactions.first.meals
  #   @order_qty = @purchase.count
  #   @total = 0
  #   i = 0
  #   while i < @order_qty
  #     @total += order[i].price
  #     i += 1
  #   end
  #   render "show"
  # end

  private

  # def add
  #   @transaction = Transaction.find(session[:transaction_id])
  # end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:description, :delivery_address, :user_id, :meal_id)
  end

  def amount_to_be_charged
    @order = Transactions.first.meals
    @order_qty = @purchase.count
    @total = 0
    i = 0
    while i < @order_qty
      @total += order[i].price
      i += 1
    end
  end

#end
