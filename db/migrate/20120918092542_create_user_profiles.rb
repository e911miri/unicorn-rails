class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :phone
      t.string :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
