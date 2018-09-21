10.times do |x|
	puts "Hello" + "!" * x
end

10.times do |x|
	print "Hello"
	x.times do
		print "!"
	end
	puts
end
