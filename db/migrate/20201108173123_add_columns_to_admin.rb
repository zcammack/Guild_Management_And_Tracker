class AddColumnsToAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admin, :adminname, :string
    add_column :admin, :name, :string, null: false
    add_column :admin, :provider, :string
    add_column :admin, :a_id, :string
  end
end
