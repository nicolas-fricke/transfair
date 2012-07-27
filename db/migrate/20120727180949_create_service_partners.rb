class CreateServicePartners < ActiveRecord::Migration
  def change
    create_table :service_partners do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.integer :birth_year
      t.string :phone_number
      t.references :country
      t.string :city
      t.boolean :is_urban
      t.references :education
      t.text :education_background
      t.text :work_experience
      t.text :internet_access
      t.text :internet_use

      t.timestamps
    end
    add_index :service_partners, :country_id
    add_index :service_partners, :education_id
  end
end
