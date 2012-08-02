class Client < ActiveRecord::Base
  attr_accessible :company, :email, :name, :phone_number, :position, :surname, :affiliation
  belongs_to :country
  belongs_to :affiliation

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