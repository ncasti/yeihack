class StudentsController < ApplicationController
	def index
	end

	def create
		@student = Student.new(mentor_params)
	end
end
