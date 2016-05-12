class CountWords
	def initialize(string)
	@string = string
	end

	def count_words
		@string.split.count
	end

	def count_letters
		@string.length	
	end

	def reverse
		@string.reverse
	end

	def uppercase
		@string.upcase
	end

	def lowercase
		@string.downcase
	end

end
