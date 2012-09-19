class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :leader
      t.string :description
      t.string :permissions
      t.string :notes

      t.timestamps
    end
  end
end
