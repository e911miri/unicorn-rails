class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.integer :duration
      t.string :audience
      t.string :messgae
      t.string :url
      t.string :notes
      t.string :user_id

      t.timestamps
    end
  end
end
