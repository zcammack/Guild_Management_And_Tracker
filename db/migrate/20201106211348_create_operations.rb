class CreateOperations < ActiveRecord::Migration[6.0]
  def change
    create_table :operations do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
