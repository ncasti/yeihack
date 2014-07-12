class StudentsController < ApplicationController
	def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    @student.find_mentor
  end

  private
    def student_params
      params.require(:student).permit(:name, :email, :field)
    end
end
