class Fruits

  attr_accessor :list

  def initialize
    @list = ['apple', 'apricot', 'banana', 'kiwi', 'ugly']
  end

  def total_begins_with(letter = 'k')
    total = list.inject(0) { |result, fruit|
      (fruit[0] == letter) ? result +=1 : result
    }
    total
  end

  def total_for_each_first_letter
    total = list.each_with_object(Hash.new(0)) { |fruit, result|
      result[fruit[0]] += 1
    }
    total
  end

end
