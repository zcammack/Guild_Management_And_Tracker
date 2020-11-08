class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :user, :username, :string
    add_column :user, :name, :string, null: false
    add_column :user, :provider, :string
    add_column :user, :uid, :string
  end
end
