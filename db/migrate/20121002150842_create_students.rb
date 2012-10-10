class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :matric_no
      t.integer :department_id

      t.timestamps
    end
  end
end
