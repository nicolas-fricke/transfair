class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.references :client
      t.datetime :deadline_client
      t.datetime :deadline_intern
      t.references :job_type
      t.references :job_status
      t.boolean :client_paid
      t.integer :rating
      t.text :rating_text

      t.timestamps
    end
    add_index :jobs, :client_id
    add_index :jobs, :job_type_id
    add_index :jobs, :job_status_id
  end
end
