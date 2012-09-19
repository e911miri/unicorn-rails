class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :source
      t.string :content
      t.string :notes

      t.timestamps
    end
  end
end
