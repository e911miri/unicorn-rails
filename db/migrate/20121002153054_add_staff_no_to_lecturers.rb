class AddStaffNoToLecturers < ActiveRecord::Migration
  def change
    add_column :lecturers, :staff_no, :string
  end
end
