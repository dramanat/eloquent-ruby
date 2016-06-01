require './scopes'

describe "@text variable dragged to block scope" do
  context "#flower -implicitly call a block" do
    it "should equal flower power" do
      flower {"#{@text} power"}.should == 'flower power'
    end
  end
  context "#flower2 -explicitly call a block" do
    it "should equal flower power" do
      flower2 {"#{@text} power"}.should == 'flower power'
    end
  end
end
