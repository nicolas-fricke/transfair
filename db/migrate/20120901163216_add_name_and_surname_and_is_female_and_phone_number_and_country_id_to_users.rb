class AddNameAndSurnameAndIsFemaleAndPhoneNumberAndCountryIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :String
    add_column :users, :surname, :String
    add_column :users, :is_female, :Boolean
    add_column :users, :phone_number, :String
    add_column :users, :country_id, :Integer
    add_column :users, :phone_number, :Strin
  end
end
