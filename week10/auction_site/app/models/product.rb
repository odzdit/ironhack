class Product < ActiveRecord::Base

	def self.last_created_products(limit)
		limit(limit).order(created_at: :desc)
	end

	belongs_to :user

end
