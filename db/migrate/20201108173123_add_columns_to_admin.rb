class AddColumnsToAdmin < ActiveRecord::Migration[6.0]
  def change
    remove_column :admins, :username, :string
    add_column :admins, :username, :string
    add_column :admins, :name, :string, null: false
    add_column :admins, :provider, :string
    add_column :admins, :a_id, :string
  end
end
