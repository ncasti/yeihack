class AddMentorIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :mentor_id, :integer
  end
end
