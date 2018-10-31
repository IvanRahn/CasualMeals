class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show]

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def show
    
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user_id = current_user.id
    MealTransaction.create(meal_id: meal_id, transaction_id: transaction_id)
    respond_to do |format|
      if @transaction.save
        format.html { redirect_to transaction_path(@transaction), notice: "Transaction created." }
      else
        format.html { render :new }
      end
    end
  end


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
    end
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:description, :delivery_address, :user_id)
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
