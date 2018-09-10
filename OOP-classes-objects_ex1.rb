  # Exercise 1: Bank Account

class BankAccount

  #initialize class & attributes
  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  #Instance methods -------------------------

  def balance
    return @balance
  end

  def interest_rate
    return @interest_rate
  end

  def balance=(balance)
      @balance = balance
  end

  def interest_rate=(interest_rate)
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def gain_interest
    @balance = @balance * (1 + @interest_rate)
  end


end
