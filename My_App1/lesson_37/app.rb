f = File.open 'file.txt', 'r'

@hh = {}

def add_to_hash word
	if !word.empty?
		word.downcase!

		cnt = @hh[word].to_i
		cnt += 1
		@hh[word] = cnt
	end
end

f.each_line do |line|
	# puts line
	arr = line.split(/\s|\n|\.|,/)
	puts arr.inspect
	arr.each { |word| add_to_hash(word) }
end

f.close

@hh.each do |k,v|
	puts "#{v} #{k}"
end
