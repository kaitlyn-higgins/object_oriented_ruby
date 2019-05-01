class Moving_object
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Moving_object
  attr_accessor :fuel, :make, :model

  def initialize(input)
    super()
    @fuel = input[:fuel_type]
    @make = input[:make]
    @model = input[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Moving_object
  attr_accessor :type, :weight, :brand

  def initialize(input)
    super()
    @type = input[:type]
    @weight = input[:weight]
    @brand = input[:brand]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(fuel_type: "premium", make: "Mercedes", model: "benz")
bike = Bike.new(type: "roadbike", weight: 10, brand: "Schwynn")

puts car.accelerate
puts bike.accelerate
puts car.honk_horn
puts bike.ring_bell
puts car.make
puts bike.weight
