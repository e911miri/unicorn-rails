class CreateLecturers < ActiveRecord::Migration
  def change
    create_table :lecturers do |t|
      t.string :userprofile_id
      t.string :department_id

      t.timestamps
    end
  end
end
