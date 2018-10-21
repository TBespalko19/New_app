orders_line = "product_1=2,product_2=2,product_3=3"

def parse_orders_line orders_line

	s1 = orders_line.split(/,/)

	# puts s1.inspect
	arr = []

	s1.each do |x|
		s2 = x.split(/=/)

		s3 = s2[0].split(/_/)
		# puts s2.inspect
		# puts s3.inspect

		# key = s3[1]
		# value = s2[1]
		id = s3[1]
		cnt = s2[1]

		arr2 = [id, cnt]

		arr.push arr2

		# puts "Product id: #{key}, number of items: #{value}"
	end

	return arr

end

puts parse_orders_line(orders_line).inspect