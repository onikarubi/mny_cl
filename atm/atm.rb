class ATM
  @upper_limit = 100_000
  @data_list = []

  attr_accessor :name
  attr_accessor :bank_account
  attr_accessor :deposit_mny
  attr_accessor :specify_number
  attr_accessor :upper

  def initialize(name, deposit_mny, bank_account)
    # 金額, 所持金, 口座残高
    self.name = name
    self.deposit_mny = deposit_mny
    self.bank_account = bank_account
    # Userクラスで定義
  end

  def deposit
    # 口座預金
    self.bank_account += specify_number
    self.my_money -= specify_number
    puts "残高 #{@bunk_money}"
  end

  def withdrawal
    # 口座 引き出し
    self.my_money += specify_number
    self.specify_number -= specify_number
    puts "残高 #{@bunk_money}"
  end

  class << self
    def create_account(name, deposit_mny, bank_account)
      ATM.new(name, deposit_mny, bank_account)
    end

    def upper_juduge(m_upper)
      m_upper >= @upper_limit ? 'upper' : 'noupper'
    end
  end
end
