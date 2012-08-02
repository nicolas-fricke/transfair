class CreateJobsServicePartners < ActiveRecord::Migration
  def change
    create_table :jobs_service_partners do |t|
      t.references :job
      t.references :service_partner
      t.boolean :paid

      t.timestamps
    end
    add_index :jobs_service_partners, :job_id
    add_index :jobs_service_partners, :service_partner_id
  end
end
