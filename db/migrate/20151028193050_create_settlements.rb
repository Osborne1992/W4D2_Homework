class CreateSettlements < ActiveRecord::Migration
  def change
    create_table :settlements do |t|
      t.integer :country_id
      t.string :name
      t.name :kind

      t.timestamps null: false
    end
  end
end
