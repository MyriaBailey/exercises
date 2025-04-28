require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(1000)
    @transaction = Transaction.new(50)
  end

  def test_accept_money
    # give CashRegister#accept_money method a transaction obj
    # CashRegister object should increase its total money by amount_paid
    # should return the new value of total money
    # ps: amount_paid is an accessor method/instance var, init. 0

    starting_amount = @register.total_money
    
    assert_equal(starting_amount, @register.accept_money(@transaction))
    assert_equal(starting_amount, @register.total_money)

    @transaction.amount_paid = 25
    new_amount = starting_amount + 25

    assert_equal(new_amount, @register.accept_money(@transaction))
    assert_equal(new_amount, @register.total_money)
  end

  def test_change
    # does NOT mutate anything, ONLY returns a difference

    @transaction.amount_paid = 60
    cash_back = 60 - @transaction.item_cost

    assert_equal(cash_back, @register.change(@transaction))
  end

  def test_give_receipt
    # ONLY prints, item cost
    cost = @transaction.item_cost

    assert_output("You've paid $#{cost}.\n") do
      @register.give_receipt(@transaction)
    end
  end
end