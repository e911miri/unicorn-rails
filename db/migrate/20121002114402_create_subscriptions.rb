class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :resource
      t.integer :resource_id
      t.string :type

      t.timestamps
    end
  end
end
