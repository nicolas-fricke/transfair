class AddAffiliationAndCountryToClient < ActiveRecord::Migration
  def change
    add_column :clients, :affiliation_id, :integer
    add_column :clients, :country_id, :integer
  end
end
