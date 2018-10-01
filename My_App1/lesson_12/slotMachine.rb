hh = { 111 => 10, 222 => 20, 333 => 30, 444 => 40, 555 => 50, 666 => -1000, 777 => 70, 888 => 80, 999 => 90 }

balance = 100

loop do 
	puts "Press Enter to play!!!"
	gets

	a = rand(100..999)

	#сравнение и итерация через каждый ключ в хеше
	# TODO

	# hh.each_key do |roll|
	# 	if roll == a
	# 		balance = balance + hh[roll]
	# 	elsif balance <= 0
	# 		puts "\nК счастью, у Вас закончились деньги, и Вы больше ничего не проиграете!!!"
	# 		sleep 1
	# 		exit
	# 	else
	# 		balance = balance - 5
	# 	end
	# end
	if hh[a]
		balance = balance + hh[a]
	elsif balance <= 0
		puts "\nК счастью, у Вас закончились деньги, и Вы больше ничего не проиграете!!!"	# 		sleep 1
 		exit
	else
		balance = balance - 5
	end

	puts "Current combination #{a}"
	puts "Your balance is $ #{balance}"

end

