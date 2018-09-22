print "Сколько Вам лет? "
age = gets.to_i

print "Хотите поиграть? (Y/N) "
answer = gets.to_s.strip.capitalize


if  answer == "Y" && age > 18
	puts "Хорошо поиграем"

	money = 100

	while true
	puts "Введите Enter: "
	gets
	x = rand(0..9)
	y = rand(0..9)
	z = rand(0..9)

	if x == y && y == z
		if x == 0
			puts "У Вас не осталось денег)))"
			money = 0
			puts "money = #{money}"
		end
		if x == 1
			money += 10
			puts "money = #{money}"
		end
		if x == 2
			money += 20
			puts "money = #{money}"
		end
		if x == 3
			money += 30
			puts "money = #{money}"
		end
		if x == 4
			money += 40
			puts "money = #{money}"
		end
		if x == 5
			money += 50
			puts "money = #{money}"
		end
		if x == 6
			money = money / 2
			puts "money = #{money}"
		end
		if x == 7
			money -= 70
			puts "money = #{money}"
		end
		if x == 8
			money -= 80
			puts "money = #{money}"
		end
		if x == 9
			money -= -90
			puts "money = #{money}"
		end
		if x == 10
			money += 100
			puts "money = #{money}"
		end
		if x == 1 && y == 2 && z == 3
			money -= 123
			puts "money = #{money}"
		end
		puts "combination #{x.to_s + x.to_s + x.to_s}"
		next
		end
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