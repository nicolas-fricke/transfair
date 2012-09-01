class RemoveNameAndSurnameAndEmailAndPhoneNumberAndCountryIdFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :name
    remove_column :clients, :surname
    remove_column :clients, :email
    remove_column :clients, :phone_number
    remove_column :clients, :country_id
  end

  def down
    add_column :clients, :country_id, :Integer
    add_column :clients, :phone_number, :String
    add_column :clients, :email, :String
    add_column :clients, :surname, :String
    add_column :clients, :name, :String
  end
end
