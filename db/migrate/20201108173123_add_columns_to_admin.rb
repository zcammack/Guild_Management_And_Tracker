class AddColumnsToAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :adminname, :string
    add_column :admins, :name, :string, null: false
    add_column :admins, :provider, :string
    add_column :admins, :a_id, :string
  end
end
