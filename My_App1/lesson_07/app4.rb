print "Сколько Вам лет? "
age = gets.to_i

print "Хотите поиграть? (Y/N) "
answer = gets.to_s.strip.capitalize


if  answer == "Y" && age > 18
	puts "Хорошо поиграем"

	money = 100

	puts "Введите Enter чтобы дернуть ручку"
	gets

	x = rand(0..9) && y = rand(0..9) & 	z = rand(0..9)

	if x == 0 && y == 0 && z == 0
		puts "Ваш баланс обнулен!!!"
		money = 0
	end

	2000.times do

		#111
		if x == 1 && y == 1 && z == 1
			puts "Вам зачислено 10 долларов!!!"
			money = money + 10
		end
		
		#222
		if x == 2 && y == 2 && z == 2
			puts "Вам зачислено 20 долларов!!!"
			money = money + 20
		end
		
		#333
		if x == 3 && y == 3 && z == 3
			puts "Вам зачислено 30 долларов!!!"
			money = money + 30
		end

		#444
		if x == 4 && y == 4 && z == 4
			puts "Вам зачислено 40 долларов!!!"
			money = money + 40
		end
		
		#555
		if x == 5 && y == 5 && z == 5
			puts "Вам зачислено 50 долларов!!!"
			money = money + 50
		end
		
		#666
		if x == 6 && y == 6 && z == 6
			puts "У Вас снято 60 долларов!!!"
			money = money / 2
		end
		
		#777
		if x == 7 && y == 7 && z == 7
			puts "У Вас снято 70 долларов!!!"
			money = money - 70
		end
		
		#888
		if x == 8 && y == 8 && z == 8
			puts "У Вас снято 80 долларов!!!"
			money = money - 80
		end

	# 999	
		if x == 9 && y == 9 && z == 9
			puts "Вам зачислено 90 долларов!!!"
			money = money + 90
		end

	# 10 10 10
		if x == 10 && y == 10 && z == 10
			puts "Вам зачислено 100 долларов!!!"
			money = money + 100
		end

		if x == 1 && y == 2 && z == 3
			puts "У Вас снято 123 доллара!!!"
			money = money - 123
		end

		puts "#{x}#{y}#{z}"
		puts "Осталось денег: #{money} долларов"
	end

end

if age <= 18
	puts "Вы не совершеннолетний!!!"
	exit
end

if answer == "N"
	puts "Вы не хотите играть!!!"
	exit
end