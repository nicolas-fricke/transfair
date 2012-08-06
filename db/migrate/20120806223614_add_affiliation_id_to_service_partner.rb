class AddAffiliationIdToServicePartner < ActiveRecord::Migration
  def change
    add_column :service_partners, :affiliation_id, :integer
  end
end
