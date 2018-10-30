class TransactionController < ApplicationController
    def home 
        @transactions = Transaction.all
    end

end