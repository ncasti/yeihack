class MentorsController < ApplicationController
	def index
	end

	def create
		@mentor = Mentor.new(mentor_params)
	end
end
