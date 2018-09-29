#arr1 = ["walt", "hank", "jr", "jessie", "lidia", "21"]
arr = %w[walt hank jr jessie lidia 21]

x = 0
arr.each do |name|
	puts "#{x} #{name}"
	x = x + 1
end