require './atm'
class AtmUser < ATM
  def initialize
    super(name, deposit_mny, bank_account)
  end
end
