class AddIsFemaleToServicePartner < ActiveRecord::Migration
  def change
    add_column :service_partners, :is_female, :boolean
  end
end
