def get_command
#	return "left"
	x = rand (1..4)

	if x == 1
		cmd = :left
	elsif x == 2
		cmd = :right
	elsif x == 3
		cmd = :down
	elsif x == 4
		cmd = :up
	end
end

command = get_command

puts "Получена команда: #{command}"

#if command = "left"
if command == :left
	puts "Робот едет влево"
elsif command == :right
	puts "Робот едет вправо"
elsif command == :down
	puts "Робот едет вниз"
elsif command == :up
	puts "Робот едет вверх"
end
