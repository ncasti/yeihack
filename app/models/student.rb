class Student < ActiveRecord::Base
	belongs_to :mentor

  def find_mentor
  end
end
