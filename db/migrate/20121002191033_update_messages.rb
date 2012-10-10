class UpdateMessages < ActiveRecord::Migration
  def up
    add_column :messages, :user_id, :string
  end

  def down
  end
end
