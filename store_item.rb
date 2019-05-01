# shoe1 = {type: "pumps", price: 80, color: "magenta", sku: "G2927S98"}
# shoe2 = {:type => "maryjanes", :price => 62, :color => "matte-black", :sku => "G36547S92"}
# shoe3 = {type: "hightop kicks", price: 98, color: "burnt-orange", sku: "G36937S23"}

# puts "The #{shoe1[:type]} are #{shoe1[:color]} and they cost $#{shoe1[:price]}"
# puts "The #{shoe2[:type]} are #{shoe2[:color]} and they cost $#{shoe2[:price]}"
# puts "The #{shoe3[:type]} are #{shoe3[:color]} and they cost $#{shoe3[:price]}"

class Shoes
  attr_reader :type, :price, :color, :sku
  attr_writer :color, :price

  def initialize(input)
    @type = input[:type]
    @price = input[:price]
    @color = input[:color]
    @sku = input[:sku]
  end

  def discount=(percent__input)
    @price = price - (price * percent__input)
  end
end

class Food < Shoes
  attr_reader :shelf_life

  def initialize(input)
    super
    @shelf_life = input[:shelf_life]
  end
end

maryjanes = Shoes.new(type: "maryjanes", price: 62, color: "matte-black", sku: "G36547S92")
pumps = Shoes.new(type: "pumps", price: 80, color: "magenta", sku: "G2927S98")
hightop_kicks = Shoes.new(type: "hightop kicks", price: 98, color: "burnt-orange", sku: "G36937S23")
cheetos = Food.new(type: "Flamin' Hot Cheetos", price: 2, shelf_life: 90, sku: "G36937S25")

puts pumps.discount = (0.3)
puts pumps.price
puts hightop_kicks.color = "lime"
puts hightop_kicks.color
puts maryjanes.sku
puts hightop_kicks.price = 40
puts hightop_kicks.price
puts cheetos.shelf_life
puts cheetos.type
