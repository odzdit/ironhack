require_relative("lib/string_calculator")
require "spec_helper"

describe string_calculator do 
	it "returns 0 for an empty string" do
		expect(string_calculator.new.add("")).to eq(0)
	end
end
