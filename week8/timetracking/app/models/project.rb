class Project < ActiveRecord::Base

	def self.clean_old
		Project.where("created_at < ?", 1.week.ago).destroy_all
	end


end
