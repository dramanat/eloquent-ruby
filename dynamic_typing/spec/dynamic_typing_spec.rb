require "./dynamic_typing"

describe "type checking not required in well written ruby code" do

  context "Dog#sound method called" do
    it "should equal woof" do
      dog = Dog.new
      dt  = DynamicTyping.new
      dt.sound_from(dog).should == "woof"
    end
  end

  context "Cat#sound method called" do
    it "should equal meow" do
      cat = Cat.new
      dt  = DynamicTyping.new
      dt.sound_from(cat).should == "meow"
    end
  end

end
