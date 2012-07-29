class Client < ActiveRecord::Base
  attr_accessible :company, :email, :name, :phone_number, :position, :surname



  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end


end