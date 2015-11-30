class Job < ActiveRecord::Base
	geocoded_by :city_state
	after_validation :geocode
	validates_presence_of :city, :state, :description, :title
	
	belongs_to 	:user
	has_many	:applications
	def city_state
		"#{city}, #{state}"
	end
end
