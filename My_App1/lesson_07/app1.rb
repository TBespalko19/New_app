print "Вы довольны своей зарплатой? (1 - Y/0 - N) "
#answer = gets.strip.capitalize
answer = gets.to_i

#if answer == "Y"
if answer == 1
	puts "Очень хорошо"
#else answer == "N"
else answer == 0
	puts "Очень плохо"
end

#puts "Очень плохо"