class CreateSpotchecks < ActiveRecord::Migration
  def change
    create_table :spotchecks do |t|
      t.integer :job_id
      t.integer :service_partner_id
      t.integer :rating
      t.text :rating_text

      t.timestamps
    end
  end
end
