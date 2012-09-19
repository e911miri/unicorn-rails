class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :code
      t.integer :unit
      t.string :summary
      t.string :synopsis
      t.string :prerequisites
      t.string :notes
      t.integer :depatement_id

      t.timestamps
    end
  end
end
