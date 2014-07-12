class Mentor < ActiveRecord::Base
	has_many :students

	def find_students
		unmatchedStudents = Student.all.where(mentor_id: nil)

		studentMatches = [] #array of students in the mentor's field who need a mentor 
		i = 0

		unmatchedStudents.each do |student|
			if student.field == self.field && i < 5
				student.mentor_id = self.id 
				student.save
				studentMatches.push(student)
				i += 1
			end
		end

		return studentMatches
	end

end
