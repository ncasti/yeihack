class Student < ActiveRecord::Base
	belongs_to :mentor

	def find_mentor
		mentors = Mentor.all

		foundMentor = nil
		mentors.each do |mentor|
			if mentor.field == self.field
				if foundMentor == nil
					foundMentor = mentor
				end

				if Student.all.where(mentor_id: mentor.id).count < Student.all.where(mentor_id: foundMentor.id).count
					foundMentor = mentor
				end
			end

		end
		
		return foundMentor
	end

end
