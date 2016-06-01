class Dog
  def sound
    "woof"
  end
end

class Cat
  def sound
    "meow"
  end
end

class DynamicTyping

  def sound_from(obj)
    obj.sound
  end

end

