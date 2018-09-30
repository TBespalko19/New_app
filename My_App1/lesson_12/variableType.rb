hh = {'cat' => ['кот', 'кошка'], 'dog' => ['собака', 'пес'], 'girl' => ['девушка']}

loop do

	print "Введите слово (Enter to stop): "
	word = gets.strip

	if word == ''
		break;
	end

	b = hh[word]

	puts "Тип переменной: #{b.class}"

end

# puts hh.keys

# hh.each_value do |key|
# 	puts "Ключ: #{key}"
# end

x = 0

	hh.each_value do |value|
		x = x + value.size
	end

 puts x