class CreateSettlements < ActiveRecord::Migration
  def change
    create_table :settlements do |t|
      t.integer :country_id
      t.string :name
      t.string :kind

      t.timestamps null: false
    end
  end
end
