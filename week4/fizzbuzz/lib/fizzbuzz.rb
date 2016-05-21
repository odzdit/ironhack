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

def div_by_none(number)
		if number % 15 != 0
			return number
		elsif
			number % 3 != 0
			return number
		else
			number % 5 != 0
			return number
		end
	end

end
