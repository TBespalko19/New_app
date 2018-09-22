#print "Введите Enter чтобы сыграть..."
#gets

#x = rand(1..50)

#1.upto(50) do |num|
#	y = rand(1..50)
#	if x == y
#	puts "#{num} Вы выиграли!!!"
#	else
#		puts "#{num} Вы проиграли(:"
#	end
#end

print "Сколько раз будем играть? "
n = gets.to_i

print "Введите Ваше любимое число "
f = gets.to_i


1.upto(n) do |nn|

	puts "Играем #{nn} раз"

	x = rand(1..50)

#	if x == 19
	if x == f

	puts "Вы выиграли!!!"

	end
end

