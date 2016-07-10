class Bid < ActiveRecord::Base
	attr_accessor :email
	belongs_to :product
	belongs_to :user
end
