class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :audience
      t.string :fee
      t.string :time
      t.string :notes

      t.timestamps
    end
  end
end
