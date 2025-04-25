require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class BoolTest < Minitest::Test
  def test_odd
    value = 1
    assert_equal(true, value.odd?)
  end
end