class Client < ActiveRecord::Base
  attr_accessible :company, :email, :name, :phone_number, :position, :surname
end
