class User < ActiveRecord::Base
validates :email, presence: true
validates :email, uniqueness: true
	has_many :products


	def self.last_created_users(limit)
		limit(limit).order(created_at: :desc)
	end

end
