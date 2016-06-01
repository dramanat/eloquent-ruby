require "./mixins"

describe "Mixins; method from last module included is used when methods have same name" do

  context "Apartment module is last module included" do
    it "should have 2 rooms" do
      roh = RoofOverHead.new
      roh.num_rooms.should == 2
    end
  end

  context "House module is last module included" do
    it "should have 4 rooms" do
      kuwtj = KeepingUpWithTheJoneses.new
      kuwtj.num_rooms.should == 4
    end
  end

end

describe "extend module for class level methods" do

  context "use Farm modlue #rentable? without instantiating class" do
    it "should return true" do
      SelfSufficientLiving.rentable?.should == true
    end
  end

end


describe "module-level utility methods (have to use self)" do

  context "Mansion" do
    it "#lots_of_space? should return true" do
      mansion = Mansion.new
      mansion.lots_of_space?.should == true
    end
  end

  context "Hovel" do
    it "#lots_of_space? sould return false" do
      hovel = Hovel.new
      hovel.lots_of_space?.should == false
    end
  end

end
