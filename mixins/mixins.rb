module House
  def num_rooms
    4
  end
end

module Apartment
  def num_rooms
    2
  end
end

module Farm
  def rentable?
    true
  end
end

module SquareFootage
  def self.big_place?(sqft)
    (sqft > 1000) ? true : false
  end
end

class RoofOverHead
  include House
  include Apartment
end

class KeepingUpWithTheJoneses
  include Apartment
  include House
end

class SelfSufficientLiving
  extend Farm
end

class Mansion
  def lots_of_space?
    ::SquareFootage.big_place?(5000)
  end
end

class Hovel
  def lots_of_space?
    ::SquareFootage.big_place?(500)
  end
end

