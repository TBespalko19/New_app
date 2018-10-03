class Something
	attr_accessor :x, :y

	def initialize hash 
		hash.each do |key, value|
			send"#{key}=", value
		end
	end

	# def initialize x, y, z # равнозначно методу initialize приведенному выше
	# 	@x = x
	# 	@y = y
	# 	@z = z
	# end
end

s = Something.new :x => 1, :y => 2

puts s.x