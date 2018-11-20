class BankAccount

  @@interest_rate = 1.03
  @@accounts = []
  @@create = BankAccount.new

  def initialize
    @balance = 0
  end

  def self.create(client_name)
    @@accounts << BankAccount.new(client_name)
    return BankAccount.new
  ########
  end

  def self.total_funds
    funds = 0
    @@accounts.each do |item|
      funds += item.balance
    end
      return funds #######
  end

  def self.interest_time
    @@accounts.each { account
    account *= @@interest_rate }
    return account
  ####
  end


  def balance=(balance)
    @balance = balance
  end

  def balance
    @balance
  end

  def deposit (deposit)
    @balance += deposit
  end

  def withdraw (withdrawal)
    @balance -= withdrawal


end
