require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Hue" do
  it "should print escape codes for red" do
    s = Hue.red("test")
    s.include?("\033[31m").should be_true
  end
end
