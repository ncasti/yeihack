class AddBioColumnToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :bio, :string
  end
end
