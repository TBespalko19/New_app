print "Хотите поиграть? (Y/N) "
answer = gets.to_s.strip.capitalize


if  answer == "Y"
	puts "Хорошо поиграем"
elsif answer == "N"
	puts "Не хотите играть - не надо"
else
	puts "Ошибка, не могу понять Ваше желание"
end

puts "Програма закончена, все права защищены"