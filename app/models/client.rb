class Client < ActiveRecord::Base
  attr_accessible :company, :email, :name, :phone_number, :position, :surname
  belongs_to :country, :affiliation

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

  def full_name
    "#{self.name} #{self.surname}"
  end

end