# Сложный англо-русский словарь - с несколькими вариантами перевода для каждого слова.
# Использовать хэши вида hh = {'cat' => ['кот', 'кошка'], ...},
# где ключ - это строка, а значение - массив. Словарь будет выводить:
# количество переводов слова;
# сами переводы слова. Вывод:
# Количество переводов слова: 2
# Переводы:
# кот
# кошка

hh = {'cat' => ['кот', 'кошка'], 'dog' => ['собака', 'пес'], ['girl'] => 'девушка'}

loop do

	print "Введите слово (Enter to stop): "
	word = gets.strip

	if word == ''
		break;
	end

	arr = hh[word]

	puts "Переводы слова: "
	puts arr
	puts "Количество переводов: #{arr.size}"

end