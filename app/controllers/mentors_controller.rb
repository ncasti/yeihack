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

    if matchedStudents != []
      matchedStudents.each do |student|
        UserMailer.send_pairing_email(@mentor, student).deliver
      end
    end  

    redirect_to mentor_path(@mentor.id)
	end

  def show
    @mentor = Mentor.find(params[:id])
  end

  private
    def mentor_params
      params.require(:mentor).permit(:name, :email, :field, :bio)
    end
end
