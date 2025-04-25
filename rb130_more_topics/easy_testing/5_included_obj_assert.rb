require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class IncludeTest < Minitest::Test
  def test_include
    list = [1, 2, 'xyz', 3]
    assert_includes(list, 'xyz')
  end
end