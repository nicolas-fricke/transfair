class RemoveBirthYearFromServicePartner < ActiveRecord::Migration
  def up
    remove_column :service_partners, :birth_year
  end

  def down
    add_column :service_partners, :birth_year, :integer
  end
end
