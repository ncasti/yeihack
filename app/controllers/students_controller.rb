class StudentsController < ApplicationController
	def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.find_mentor != nil
      @student.mentor_id =  @student.find_mentor.id
    end
    
    @student.save
    

    redirect_to student_path(@student.id)
  end

  def show
    @student = Student.find(params[:id])
  end

  private
    def student_params
      params.require(:student).permit(:name, :email, :field)
    end
end
