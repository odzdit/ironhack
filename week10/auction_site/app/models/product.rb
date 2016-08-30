class Product < ActiveRecord::Base

belongs_to :user
has_many :bids
	

	def self.last_created_products(limit)
		limit(limit).order(crated_at: :desc)
	end

	def highest_bid
		self.bids.order(amount: :desc).first.amount
	end



end
