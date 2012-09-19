class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :school
      t.string :hod
      t.string :location
      t.string :description
      t.string :notes

      t.timestamps
    end
  end
end
