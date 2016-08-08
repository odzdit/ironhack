class Post < ActiveRecord::Base

	has_many :labels
	has_many :labelled_posts, through: :labels

end
