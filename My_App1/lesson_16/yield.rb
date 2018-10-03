def run_5_times
	# 5.times do
	# 	yield
	# end
	x = 0
	while x < 5
#		yield x
	yield x, 55
		x += 1
	end
end

# run_5_times { |i| puts "Something, index: #{i}" }
run_5_times { |i, v| puts "Something, index: #{i}, value: #{v}" }