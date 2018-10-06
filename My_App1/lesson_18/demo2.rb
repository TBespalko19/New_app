def is_password_weak? password

	input = File.open "password.txt", "r"

	while (line = input.gets)
		line.strip!

		if password.include? line
			# puts "Your password is weak"
			# exit
			return rtue
		end
		#	puts line
	end
	return false
end

print "Enter password: "
my_password = gets.strip

if is_password_weak my_password
puts "Your password is weak"
else
puts "Your password is not weak"
end