class Animal
#	@name = 'Dog'
	def run
		@name = 'Dog'
		puts "#{@name} is runnning"
	end

	def stop
		puts "#{@name} stop"
	end
end

a = Animal.new
a.run
a.stop