10.times do
	x = rand 10
	puts x
end

50.times do
	print "Tania "
	sleep rand(0.01..0.5)
end


print 'Введите строку: '
str = gets.chomp

10.times do
  str.size.times do |x|
    print str[x]
    d = (1 + rand(30)).to_f / 100
    sleep d
    print '-'
  end

  print ' '
end