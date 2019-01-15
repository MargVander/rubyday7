require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
	it "should return" do
		expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
	end
end