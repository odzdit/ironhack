require_relative("../lib/fizzbuzz")
require("spec_helper")

describe "FizzBuzz" do
	before :each do
	@fizzbuzz = FizzBuzz.new	
end

	it "If number if divisible by 3 puts Fizz" do
		expect(@fizzbuzz.div_by_3(9)).to eq("Fizz")
	end

it "If number if divisible by 5 puts Fizz" do
		expect(@fizzbuzz.div_by_5(5)).to eq("Buzz")
	end

it "If number if divisible by 15 puts Fizz" do
		expect(@fizzbuzz.div_by_15(15)).to eq("FizzBuzz")
	end

end