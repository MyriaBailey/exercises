require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def test_prompt_payment
    # Goal: prompt a number
    # - update amount_paid
    # - break if valid payment
    # - and if sufficient payment
    # else loop.
    # end should have a sufficient amount paid

    item_cost = 60
    transaction = Transaction.new(item_cost)
    output = StringIO.new

    correct_input = StringIO.new("60\n")
    transaction.prompt_for_payment(input: correct_input, output: output)
    assert_equal(item_cost, transaction.amount_paid)

    invalid_input = StringIO.new("not a num\n60\n")
    transaction.prompt_for_payment(input: invalid_input, output: output)
    assert_equal(item_cost, transaction.amount_paid)

    overpaid = StringIO.new("80\n")
    transaction.prompt_for_payment(input: overpaid, output: output)
    assert_equal(80, transaction.amount_paid)
  end
end