class Something
	attr_accessor :name

	def initialize
	# 	@name = "Mike"
		send("name=", "Mike")
	end
end

s = Something.new
puts s.name

#puts s.name