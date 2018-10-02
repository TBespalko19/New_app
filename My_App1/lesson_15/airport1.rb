# 2 аеропорта, в каждом из них по 3 самолета
class Country
	attr_reader :name, :airports

	def initialize name
		@name = name
		@airports = []
	end

	def add_airport airport
		@airports << airport
	end
end

class Airport
	attr_reader :name, :planes

	def initialize name
		@name = name
		@planes = []
	end

	def add_plane plane
		@planes << plane
	end
end

class Plane
	attr_reader :model

	def initialize model
		@model = model
	end

end

country = Country.new 'Ukraine'

# Создание аеропортов

airports = []

airport1 = Airport.new('Boryspil')
airport2 = Airport.new('Zhuliany')

country.add_airport airport1
country.add_airport airport2

# Добавляем аеропорті в массив

airports << airport1
airports << airport2

# Создание самолетов для 1 аеропорта

plane1 = Plane.new 'Boeing-777'
plane2 = Plane.new 'A-320'
plane3 = Plane.new 'IL-76'

# Добавляем самолеты в 1 аеропорт

airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

# Создание самолетов для 2 аеропорта

plane_a = Plane.new 'AA1'
plane_b = Plane.new 'BB1'
plane_c = Plane.new 'CC1'

# Добавляем самолеты в 2 аеропорт

airport2.add_plane plane_a
airport2.add_plane plane_b
airport2.add_plane plane_c

airports.each do |airport|
	# Show airport name
	puts "Airport: #{airport.name}"
	
	# Show planes in thi airport
	airport.planes.each do |plane|
		puts "Plane: #{plane.model}"
	end
end