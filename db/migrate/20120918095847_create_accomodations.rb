class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|
      t.string :location
      t.string :name
      t.string :size
      t.string :type
      t.string :status
      t.string :notes

      t.timestamps
    end
  end
end
