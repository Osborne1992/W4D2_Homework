class AddNationalAnthemAndCurrencyAndDemonymToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :national_anthem, :string
    add_column :countries, :currency, :string
    add_column :countries, :demonym, :string
  end
end
