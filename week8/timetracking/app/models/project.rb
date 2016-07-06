class Project < ActiveRecord::Base

validates :name,  presence: true
# validates :name, uniqueness: true
validates :name, length: {maximum: 30}
# validates :name, format: {with: /\w*\s*/}

	has_many :time_entries

	def self.clean_old
		where( "creatted_at < ?", 1.week.ago).destroy_all

						# SAME AS 

		# self.where( "creatted_at < ?", 1.week.ago).destroy_all
		# Project.where( "creatted_at < ?", Time.now - 1.week).destroy_all
	
	end

	def self.last_created_projects(limit)
		limit(limit).order(created_at: :desc)
	end

	def total_hours_month(month, year)
		date = Time.new(year, month)

		entries_in_month = time_entries.where(
			date: date..date.end_of_month
		)

		hours = entries_in_month.sum { | e | e.hours }
		minutes = entries_in_month.sum { | e | e.minutes }
		(minutes / 60) + hours
	end
end
