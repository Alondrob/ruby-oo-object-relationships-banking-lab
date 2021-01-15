require 'pry'
class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  attr_reader

  def initialize(sender, receiver, amount)

      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = 'pending'

  end

  def valid?
    # i am calling the valid?method in the instance of a transfer,
    # it is already assigned that the sender is set to amanda => an object of a bank acount class
    # the reciever is set to be avi => another instance of a bank account class
    # both sender and reciever are instances of bank account class, 
    # basically it is like calling amanda.valid? (in the class method) and avi.valid? (in the class method)

    if sender.valid? && receiver.valid? 
      true
    else
      false
    end

  end


  def execute_transaction #this is where i stuck
    # binding.pry
    if sender.balance < @amount || !sender.valid? || !receiver.valid?
      @status = 'rejected'
      return "Transaction rejected. Please check your account balance."

    elsif self.status == "complete"
        puts "Transaction was already excuted"
    else
      # binding.pry
      @sender.deposit(@amount * (-1))
      @receiver.deposit(@amount)
      @status = "complete"
    end
  end
    
  def reverse_transfer
    if @status == "complete"
      @sender.deposit( @amount ) 
      @receiver.deposit( @amount * -1)
      @status = "reversed"
    end



  end


















  end



#  binding.pry













