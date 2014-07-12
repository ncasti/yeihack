class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_pairing_email(mentor, student)
  	@mentor =  mentor
  	@student = student

  	mail( :to => @student.email,
  		:cc => @mentor.email,
  		:subject => 'You have been paired by MentorNH')
  end
end
