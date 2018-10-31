class TransactionController < ApplicationController
    def index 
        @transactions = Transaction.all
    end

    def create
        @transactions = Transaction.new(transaction_params)
        @transactions.user_id = current_user.user.id
        respond_to do |format|
          if @transaction.save
            format.html { redirect_to @transactions, notice: "Transaction created." }
          else
            format.html { render :new }
          end
        end
      end

      # def calculate
      #   @qty = 
      #   @price = 
    def calculate
      @meal_transactions = MealTransactions.all
      @qty = 0
      @price = 0 
    
      @meal_transactions.each do |order|
        @qty = order.where(transaction_id: transaction.).count

      #   @total = @qty * @price
      end
      @total = @qty * @price

      #   render transaction
      # end
      
    end


end