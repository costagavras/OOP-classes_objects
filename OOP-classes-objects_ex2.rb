# Exercise 2: The Cat's Meow

class  Cat

  def initialize(name, preferred_food, meal_time)
      @name = name
      @preferred_food = preferred_food
      @meal_time = meal_time
  end

  #Attribute Readers (getter)
  def name
    return @name
  end

  def preferred_food
    return @preferred_food
  end

  def meal_time
    return @meal_time
  end

  #Attribute Writers (setter)
  def name=(name)
      @name = name
  end

  def preferred_food=(preferred_food)
      @preferred_food = preferred_food
  end

  def meal_time=(meal_time)
      @meal_time = meal_time
  end

  def eats_at
    if meal_time < 12
      return "#{name} eats at #{@meal_time} AM"
    elsif meal_time == 12
      return "#{name} eats at #{@meal_time} 12 PM"
    else
      return "#{name} eats at #{@meal_time-12} PM"
    end
  end

  def meow
    if meal_time < 12
      return "My name is #{name} and I eat #{preferred_food} at #{meal_time} AM"
    elsif meal_time == 12
      return "My name is #{name} and I eat #{preferred_food} at #{meal_time} PM"
    else
      return "My name is #{name} and I eat #{preferred_food} at #{meal_time-12} PM"
    end
  end

end




caio = Cat.new("Caio", "milk", 10)
tizio = Cat.new("Tizio", "fish", 12)

# puts tizio.eats_at

puts caio.meow
puts tizio.meow
