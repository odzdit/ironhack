class TimeEntry < ActiveRecord::Base
	validates :hours,  presence: true
	validates :date,  presence: true
	validates :minutes,  presence: true
	validates :hours,  numericality: true
	validates :minutes, numericality: true
	validates :project, presence: true

	belongs_to :project
end
