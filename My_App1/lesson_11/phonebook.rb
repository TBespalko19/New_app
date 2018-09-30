# Записная книга вводить: Enter name (Enter to stop):
#Enter phone number:
# Должна добавлять имя и телефон в хеш
# когда введена пустая строка - выводить хеш и завершать работу

phonebook = {}

loop do

	print "Enter name (Enter to stop): "
	name = gets.strip

	if name == ''
		break;
	end

	print "Enter phone number: "
	phone_number = gets.strip

	phonebook[name] = phone_number

end

puts phonebook['Mike']

# puts phonebook

# phonebook.each do |key,value|
# 	puts "Name: #{key}, Phone: #{value}"
# end
