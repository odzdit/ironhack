class MusicConcert < ActiveRecord::Base
has_many :comments
validates :artist, presence: true
validates :venue, presence: true
validates :city, presence: true
validates :date, presence: true
validates :price, presence: true
validates :description, presence: true
validates :price, numericality: true

	def self.sort_by_price(price)
		self.where( :price < price.to_i)
	end
end
