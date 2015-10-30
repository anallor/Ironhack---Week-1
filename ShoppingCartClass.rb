class ShoppingCart

	def initialize
		@fruit = []
	end

	def add_fruit(item, price)
		@fruit << {item: item, price: price}
	end

	def show_fruits
		@fruit.each do |fruit|
			puts fruit[:item] + fruit[:price].to_s
		end
	end

	def calculate_total_cost
		total_cost = @fruit.reduce(0.0) do |sum, fruit|
  			sum + fruit[:price]
		end
		puts "Your total cost is #{total_cost}€"
	end
end

cart = ShoppingCart.new
cart.add_item "apple", 10
cart.add_item "banana", 20
cart.add_item "banana", 20

class Fruit
	def count(quantity)
		@quantity = quantity
	end

class Apple < Fruit
	def initialize(price)
		@price = 10
	end
end
class Orange < Fruit
	def initialize(price)
		@price = 5
	end
end
class Grape < Fruit
	def initialize(price)
		@price = 15
	end
end
class Banana < Fruit
	def initialize(price)
		@price = 20
	end
end
class Watermelon < Fruit
	def initialize(price)
		@price = 50
	end
end







