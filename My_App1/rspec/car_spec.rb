require './car'

describe Car do

it "must return range"
# arrange
	before do
		@car = Car.new
	end

	#act
	@car.add_fuel 10

	#assert
		expect(@car.range).to eq 200
	end