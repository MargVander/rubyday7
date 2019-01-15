require_relative '../lib/trader'

describe "the day_trader method" do
	it "should return" do
		expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
		expect(day_trader([17, 3, 6, 9, 10, 8, 6, 1, 15])).to eq([7,8])
	end
end