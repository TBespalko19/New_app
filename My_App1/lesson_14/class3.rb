# класс записной книжки
class Book

	attr_accessor :hh
	attr_accessor :last_person

	def initialize

		@hh ={}
		@last_person = ''

	end

		def add_person options

			@last_person = options[:name]

			puts 'Already exists!' if @hh[options[:name]]

			@hh[options[:name]] = options[:age]
		end

		def show_all
			# показывает hash
			@hh.keys.each do |key|
				age = @hh[key]
				puts "Name: #{key}, age: #{age}"
			end
		end

		def last_person
			@last_person
		end
end

b = Book.new
b.add_person :name => 'Walt', :age => 50
b.add_person :name => 'Lilia', :age => 32
b.add_person :name => 'Tania', :age => 33
b.add_person :name => 'Liza', :age => 30
b.show_all
puts "Last person: #{b.last_person}"