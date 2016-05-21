require_relative("../lib/fizzbuzz")
require("spec_helper")

describe "FizzBuzz" do
	before :each do
	@fizzbuzz = FizzBuzz.new	
end

	it "If number is divisible by 3 puts Fizz" do
		expect(@fizzbuzz.div_by_3(3)).to eq("Fizz")
	end

it "If number is divisible by 5 puts Fizz" do
		expect(@fizzbuzz.div_by_5(5)).to eq("Buzz")
	end

it "If number is divisible by 15 puts Fizz" do
		expect(@fizzbuzz.div_by_15(15)).to eq("FizzBuzz")
	end

it "If number is not divisible by either 3, 5 or 15 puts Fizz" do
		expect(@fizzbuzz.div_by_none(14)).to eq(14)
	end
end