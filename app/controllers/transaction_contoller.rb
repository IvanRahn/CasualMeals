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

      #   @total = @qty * @price

      #   render transaction
      # end


end