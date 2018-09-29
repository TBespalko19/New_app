def get_command
	actions = [:left, :right, :down, :up]
	
	x = rand (0..3)

	return actions[x]

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