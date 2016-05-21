class FizzBuzz
	def div_by_3(number)
		if number % 3 == 0
			return "Fizz"
		end
	end

	def div_by_5(number)
		if number % 5 == 0
			return "Buzz"
		end
	end

	def div_by_15(number)
		if number % 15 == 0
			return "FizzBuzz"
		end
	end
end
