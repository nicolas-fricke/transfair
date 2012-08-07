class AddWorkPerspectiveToServicePartner < ActiveRecord::Migration
  def change
    add_column :service_partners, :work_perspective, :text
  end
end
