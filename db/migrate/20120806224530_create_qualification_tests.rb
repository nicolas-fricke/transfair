class CreateQualificationTests < ActiveRecord::Migration
  def change
    create_table :qualification_tests do |t|
      t.integer :language_id
      t.string :job_type_id
      t.integer :result

      t.timestamps
    end
  end
end
