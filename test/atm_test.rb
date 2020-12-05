require './atm/atm'
require 'minitest/autorun'

class AtmTest < Minitest::Test
  def test_upper
    assert_equal 'upper', ATM.upper_juduge(100_000_0)
  end
end
