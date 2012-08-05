class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.integer :job_id
      t.integer :service_partner_id
      t.boolean :paid

      t.timestamps
    end
  end
end
