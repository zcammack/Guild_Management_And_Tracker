class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :universe_setting
      t.string :dungeonmaster
      t.boolean :available
      t.datetime :startdate
      t.datetime :nextsession

      t.timestamps
    end
  end
end
