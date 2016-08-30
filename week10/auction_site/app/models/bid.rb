class Bid < ActiveRecord::Base

	attr_accessor :email
	belongs_to :product
	belongs_to :user

	validate :check_minimum_bid

	def check_minimum_bid
		if self.product.minimum_bid > self.amount
			errors.add(:minimum_bid, "Give the dough!")
		end
	end




end
