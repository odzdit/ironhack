class Link < ActiveRecord::Base
	ALPHABET = [("a".."z").to_a, ("A".."Z").to_a].flatten

	def self.generate_shortlink(link_length)
		ALPHABET.sample(link_length).join
	end

end
