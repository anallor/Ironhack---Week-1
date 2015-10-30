require 'pry'

class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end	
end

homes = [
	Home.new("Cris's place2", "Alicante", 2, 60),
	Home.new("Cris's place3", "Alicante", 2, 70),
	Home.new("Cris's place4", "Alicante", 2, 54),
	Home.new("Pepe's place", "Murcia", 3, 60),
	Home.new("Fran's place", "Valencia", 4, 70),
	Home.new("Christian's place", "Madrid", 2, 42),
	Home.new("Roberto's place", "Granada", 3, 50),
	Home.new("Nizar's place", "San Juan", 2, 42),
	Home.new("Fernando's place", "Seville", 5, 47),
	Home.new("Josh's place", "Pittsburgh", 3, 41),
    Home.new("Gonzalo's place", "Málaga", 2, 45),
	Home.new("Ariel's place", "San Juan", 4, 49)
]

def welcome
	puts "Welcome! What do you want? Write A or B \n A: list of homes \n B: filter by city"
	election = gets.chomp
	if election == "A"
		list_of_houses(homes)
	else
		filter_by_city(homes)
	end
end

def list_of_houses(array_home)
	array_home.each do |home|
		puts "Name: #{home.name}, price: #{home.price}"
	end
end

def sorting_by_price(array_home)
	sorted_price = array_home.sort do |home1, home2|
    	home1.price <=> home2.price
	end
end

def sorting_by_capacity(array_home)
	sorted_price = array_home.sort do |home1, home2|
  		home1.capacity <=> home2.capacity
	end
end

def filter_by_city(array_home, city)
	array_home.select do |home|
		home.city == city
	end
end


def average(array_home)
	selected_prices = array_home.reduce(0.0) do |sum, home|
  		sum + home.price
end

puts "The average price is:"
puts selected_prices / homes.length
end
#puts "¿Qué ciudad buscas?"
	#city_query = gets.chomp
#puts list_of_houses(sorting_by_price(filter_by_city(homes, "Alicante")))

binding.pry

