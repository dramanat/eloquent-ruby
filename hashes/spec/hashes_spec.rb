require './hashes'

describe "Fruit" do

  context "fruits array has been initialized and can be accessed" do
    it "fruits array should contain kiwi" do
      fruits = Fruits.new
      fruits.list.include?('kiwi').should == true
    end
  end

  context "#total_begins_with" do
    it "should find 2 fruits that being with letter a" do
      fruits = Fruits.new
      fruits.total_begins_with('a').should == 2
    end

  end

  context "#total_for_each_first_letter" do
    before do
      fruits                       = Fruits.new
      @first_letter_fruit_count    = fruits.total_for_each_first_letter
    end

    it "should find 2 fruits that begin with a" do
      @first_letter_fruit_count['a'].should == 2
    end

    it "should find 1 fruit each that begins with b, k, and u" do
      @first_letter_fruit_count['b'].should == 1
      @first_letter_fruit_count['k'].should == 1
      @first_letter_fruit_count['u'].should == 1
    end

    it "should find 0 fruits that being with p" do
      @first_letter_fruit_count['p'].should == 0 #default value is 0 because of Hash.new(0)
    end

  end

end
