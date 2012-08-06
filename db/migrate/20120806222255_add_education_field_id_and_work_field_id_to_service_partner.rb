class AddEducationFieldIdAndWorkFieldIdToServicePartner < ActiveRecord::Migration
  def change
    add_column :service_partners, :education_field_id, :integer
    add_column :service_partners, :work_field_id, :integer
  end
end
