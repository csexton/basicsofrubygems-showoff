require File.expand_path(File.dirname(__FILE__) + '/helper')

class TestHue < Test::Unit::TestCase
  def test_color_escapes
    s = Hue.red("test")
    assert s.include?("\033[31m")
  end
end
