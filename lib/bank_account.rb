class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  def initialize(name, balance = 1000, status = 'open')
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(balance)
    self.balance += 1000
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
   balance > 0 && status == "open"
 end

  def close_account
    self.status = 'closed'
  end
end
