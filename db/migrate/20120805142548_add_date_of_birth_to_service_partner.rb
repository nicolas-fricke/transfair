class AddDateOfBirthToServicePartner < ActiveRecord::Migration
  def change
    add_column :service_partners, :date_of_birth, :Date
  end
end
