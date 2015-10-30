
module Camera
	def take_photos
		puts "Photo taken in #{@os}"
	end
end

module FancyHour
	def show_hour
		"*******#{@current_time}*********"
	end
end

class Device
	attr_accessor :os, :inches, :current_time
	def initialize(os, inches, current_time)
		@os= os
		@inches = inches
		@current_time = Time.new
	end

	def show_my_devices
		puts @os + " " + @inches + " " + @current_time.to_s
	end

	def print_hour
		@current_time.to_s
	end

end

class Laptop < Device
	def initialize (os, inches, current_time)
		super(os, inches, current_time)
		@touchable = false
	end

	def is_touchable
		if @touchable == true
		puts "The laptop is touchable"
		else
		puts "The laptop is not touchable"
		end
	end

end

class Smartwatch < Device
	include Camera
	include FancyHour
	def initialize (os, inches, current_time)
		super(os, inches, current_time)
	end
	def print_hour
		show_hour
	end
end

class Agenda
	def initialize
		@contact_list = []
	end

	def add_contact name, number
		@acontact_list << {name: name, :number: number}
	end

	def get_contact name
		number_found = ""
		@contact_list.find do |contact|
			if name == contact[:name]
				number_found = contact[:numer]
			end
		end
		return number_found
	end

end

class Phone < Device
	include Camera

	def initialize(os, inches, current_time, agenda)
		super(os, inches, current_time)
		@agenda = _agenda
	end

	def add_contact name, number
		@agenda.add_contact(name, number)
	end
	def get_contact name
		@agenda.get_contact(name)
	end

	def call_name
		number = get_contact(name)
		puts "Calling #{number}"
	end

end

class Microwave
	def heat_food food
		"I can heat #{food}"
	end
	def print_hour
		puts " I'm a microowave #{Time.now}"
	end
end

microwave1 = Microwave.new
my_phone = Phone.new("Android", "5", "")
my_laptop = Laptop.new("Mac", "13", "")
my_smartwatch = Smartwatch.new("Samsung", "2", "")

my_array = [microwave1, my_phone, my_laptop, my_smartwatch]

my_array.each do |array|
	puts array.print_hour.to_s
end


puts my_phone.call_to_contacts



