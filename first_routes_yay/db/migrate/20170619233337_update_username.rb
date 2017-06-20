class UpdateUsername < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :username, :text, { null: false, unique: true }
  end
end
