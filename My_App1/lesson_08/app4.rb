
x = rand(1..100)

1.upto(1000) do |n|

	print "Я загадал число, угадай какое? Попытка #{n}: "

	a = gets.to_i
	if a == x
		puts "Угадал, молодец"
		exit
	elsif x > a
		puts "Нет, больше"
	elsif x < a
		puts "Нет, меньше"
	end
end
# puts "Я по секрету загадал: #{x} "