class RemoveIsFemaleAndNameAndSurnameAndCountryIdAndEmailAndPhoneNumberFromServicePartners < ActiveRecord::Migration
  def up
    remove_column :service_partners, :is_female
    remove_column :service_partners, :name
    remove_column :service_partners, :surname
    remove_column :service_partners, :country_id
    remove_column :service_partners, :email
    remove_column :service_partners, :phone_number
  end

  def down
    add_column :service_partners, :phone_number, :String
    add_column :service_partners, :email, :String
    add_column :service_partners, :country_id, :Integer
    add_column :service_partners, :surname, :String
    add_column :service_partners, :name, :String
    add_column :service_partners, :is_female, :Boolean
  end
end
