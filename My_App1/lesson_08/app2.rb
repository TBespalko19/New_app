puts "Введите А: "
a = gets.to_f

puts "Введите B: "
b = gets.to_f

print "Что будем делать? Выберите одну функцию из (+ - / *) "
op = gets.strip

result = 0

if op == "/" && b == 0
	puts "На ноль делить нельзя!!!"
	exit
end

if op == "+"
	result = a + b
end

if op == "-"
	result = a - b
end

if op == "/"
	result = a / b
end

if op == "*"
	result = a * b
end

puts "Результат #{result}"