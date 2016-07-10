class Product < ActiveRecord::Base

belongs_to :user
has_many :bids
	
	def self.last_created_products(limit)
		limit(limit).order(created_at: :desc)
	end



end
