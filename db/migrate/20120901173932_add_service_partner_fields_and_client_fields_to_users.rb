class AddServicePartnerFieldsAndClientFieldsToUsers < ActiveRecord::Migration
  def change
    # Needed for STI (single table inheritance)
    add_column :users, :type, :string
    # Additional user fields
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :is_female, :boolean
    add_column :users, :phone_number, :string
    add_column :users, :country_id, :integer
    add_column :users, :affiliation_id, :integer
    # Service Provider fields
    add_column :users, :city, :string
    add_column :users, :is_urban, :boolean
    add_column :users, :education_id, :integer
    add_column :users, :education_background, :text
    add_column :users, :work_experience, :text
    add_column :users, :internet_access, :text
    add_column :users, :internet_use, :text
    add_column :users, :date_of_birth, :date
    add_column :users, :education_field_id, :integer
    add_column :users, :work_field_id, :integer
    add_column :users, :internet_price, :float
    add_column :users, :active, :boolean
    add_column :users, :work_perspective, :text
    # Client fields
    add_column :users, :company, :string
    add_column :users, :position, :string
  end
end
