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

describe "pass arg to block" do
  context "using do/end for block" do
    it "should equal money makes the world go round" do
      pass_var_1 do |m| "#{m} makes the world go round" end
    end
    it "should ignore 2nd arg and equal money makes the world go round" do
      pass_var_2 do |m| "#{m} makes the world go round" end
    end
  end
  context "using {} for block" do
    it "should equal money makes the world go round" do
      pass_var_1 {|m| "#{m} makes the world go round"}
    end
    it "should ignore 2nd arg and equal money makes the world go round" do
      pass_var_2 {|m| "#{m} makes the world go round"}
    end
  end
end

describe "lambda usage" do
  context "#math_mtd" do
    it "should add and return 7" do
      math_mtd.should == 7
    end
    it "should subtract and return -1" do
      math_mtd(function: "subtraction").should == -1
    end
    it "should multiply and return 12" do
      math_mtd(function: "multiplication").should == 12
    end
    it "should return invalid string" do
      math_mtd(function: "division").should == 'invalid'
    end
  end
end
