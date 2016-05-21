require_relative("../lib/string_calculator")
require("spec_helper")

RSpec.describe StringCalculator do
	it "returns 0 for empty string" do
		my_calc = StringCalculator.new
		expect(my_calc.add("")).to eq(0)
	end
end

RSpec.describe StringCalculator do
	it "returns 3 for empty string" do
		my_calc = StringCalculator.new
		expect(my_calc.add("3,3,3")).to eq(9)
	end
end

