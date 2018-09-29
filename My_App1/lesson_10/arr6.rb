print "(R)ock, (S)cissors, (P)aper? "
s = gets.strip.capitalize

if s =="R"
	user_choise = :rock
elsif s =="S"
	user_choise = :scissors
elsif s =="P"
	user_choise = :papel
else
	puts "Can't undersyand what you want? sorry..."
	exit
end

arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]

matrix = [
[:rock, :paper, :second_win],
[:rock, :scissors, :first_win],
[:paper, :scissors, :second_win],
[:paper, :rock, :first_win],
[:scissors, :paper, :first_win],
[:scissors, :rock, :second_win],
[:paper, :paper, :draw],
[:scissors, :scissors, :draw],
[:rock, :rock, :draw]
]

matrix.each do |item|
	
	if item[0] ==user_choise && item[1] == computer_choice
	
		if item[2] == :first_win
			puts "User wins!"
		elsif item[2] == :second_win
			puts "Computer wins!"
		elsif item[2] == :draw
			puts "Draw!"
		end
		
		exit
	end

end