require File.expand_path(File.dirname(__FILE__) + '/helper')

class TestPurdyColor < Test::Unit::TestCase
  def test_color_escapes
    s = PurdyColor.red("test")
    assert s.include?("\033[31m")
  end
end
