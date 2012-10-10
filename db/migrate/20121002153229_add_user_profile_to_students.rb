class AddUserProfileToStudents < ActiveRecord::Migration
  def change
    add_column :students, :user_profile_id, :integer
  end
end
