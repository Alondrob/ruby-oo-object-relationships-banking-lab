require 'pry' #this is done
class BankAccount

    attr_accessor :status, :balance
    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 1000
        @status = 'open'


    end


    def deposit(sum) 
        @balance = @balance + sum
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        if status != 'open' || balance <=  0
            false
        else
            true
        end
      
    end

    def close_account
        self.status = 'closed'

    end





end
