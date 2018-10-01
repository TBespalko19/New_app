# Hash записная книжка, имя-значение

@hh ={}

#def add_person name, age
def add_person options
	# добавляет пару в hash
	# if @hh[name]
	# 	puts 'Already exists!'
	# end
#	puts 'Already exists!' if @hh[name]
	puts 'Already exists!' if @hh[options[:name]]

	@hh[options[:name]] = options[:age]
end

def show_hash
	# показывает hash
	@hh.keys.each do |key|
		age = @hh[key]
		puts "Name: #{key}, age: #{age}"
	end
end

loop do
	# добавлять пока не віведена пустая строка
	print "Enter name: "
	name = gets.strip

	if name == ''
		show_hash
		exit
	end

	print "Enter age: "
	age = gets.to_i

	opt = { :name => name, :age => age } #options == opt
	add_person opt
end