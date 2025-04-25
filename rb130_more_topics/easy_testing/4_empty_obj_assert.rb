require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EmptyTest < Minitest::Test
  def test_empty
    list = []
    # assert_equal(true, list.empty?)
    assert_empty(list)
  end
end