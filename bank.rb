class Bank
  attr_reader :my_money
  attr_reader :bank_account
  attr_accessor :deposit_mny
  attr_accessor :specify_number

  def initialize
    @bank_account = 100_000
  end

  def deposit
    self.bank_account += specify_number
    self.my_money -= specify_number
    puts "残高 #{@bunk_money}"
  end

  def withdrawal
    self.my_money += specify_number
    self.specify_number -= specify_number
    puts "残高 #{@bunk_money}"
  end
end
