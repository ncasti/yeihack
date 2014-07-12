class MentorsController < ApplicationController
	def index
	end

  def new
    @mentor = Mentor.new
  end

	def create
		@mentor = Mentor.new(mentor_params)
    @mentor.save
    matchedStudents = @mentor.find_students
	end

  def show
    @mentor = Mentor.find(params[:id])
  end

  private
    def mentor_params
      params.require(:mentor).permit(:name, :email, :field)
    end
end
