module Human
	class Manager
		def say_hi
			puts "Hello"
		end
	end

	class Hipster
#		def self.say_hi
		def say_hi
			puts "Hiiiii, yo!"
		end
	end

	class Jessie_Pinkman
	#	def self.say_hi
		def say_hi
			puts "Hi, bitch!"
		end
	end
end

module Animals
	class Dog
	end
	class Cat
	end
end


# Manager.say_hi
# Hipster.say_hi
# Jessie_Pinkman.say_hi

hipster = Human::Hipster.new
hipster.say_hi

cat = Animals::Dog.new