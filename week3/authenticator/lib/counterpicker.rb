class CounterPicker
	def initialize(operation, word_counter)
		@operation = operation
		@word_counter = word_counter

	def perform_operation
		if @operation == "Count Words"
				puts @word_counter.count_words
			elsif @operation == "Count Letters"
				puts @word_counter.count_letters
			elsif @operation == "Reverse"
				puts @word_counter.reverse
			elsif @operation == "Uppercase"
				puts @word_counter.uppercase
			elsif @operation == "Lowercase"
				puts @word_counter.lowercase
			else
				puts "Your option is not valid"
			end
		end
	end
end