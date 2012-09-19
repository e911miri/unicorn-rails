class CreateCoursematerials < ActiveRecord::Migration
  def change
    create_table :coursematerials do |t|
      t.integer :course_id
      t.string :material_path
      t.string :title
      t.string :type
      t.string :notes

      t.timestamps
    end
  end
end
