class LabelledPost < ActiveRecord::Base
	belongs_to :posts
	belongs_to :labelled_post
end
