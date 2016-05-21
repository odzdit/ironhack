require_relative("../lib/fizzbuzz")
require("spec_helper")

describe "FizzBuzz" do
	before :each do
	@fizzbuzz = FizzBuzz.new	
end

	it "If number if divisible by 3 puts Fizz" do
		expect(@fizzbuzz.div_by_3("9")).to eq(0)
	end


	# it "Puts fizz in Every Number divisible by 5" do
	# 	expect(@fizzbuzz.div_by_3("")).to eq("Buzz")
	# end


	# it "Puts fizz in Every Number divisible by 15" do
	# 	expect(@fizzbuzz.div_by_3("")).to eq("FizzBuzz")
	# end
end