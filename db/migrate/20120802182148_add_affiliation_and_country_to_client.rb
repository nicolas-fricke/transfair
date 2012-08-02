class AddAffiliationAndCountryToClient < ActiveRecord::Migration
  def change
    add_column :clients, :affiliation, :references
    add_column :clients, :country, :references
  end
end
