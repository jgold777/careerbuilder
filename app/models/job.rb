class Job < ActiveRecord::Base
	geocoded_by :city_state
	after_validation :geocode
	validates_presence_of :city, :state, :description, :title
	
	belongs_to :user

	def city_state
		"#{city}, #{state}"
	end
end
