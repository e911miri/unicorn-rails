class CreateLectureschedules < ActiveRecord::Migration
  def change
    create_table :lectureschedules do |t|
      t.integer :course_id
      t.string :timefrom
      t.string :timeto
      t.string :day
      t.string :venue
      t.string :notes

      t.timestamps
    end
  end
end
