class Client < ActiveRecord::Base
  belongs_to :country
  belongs_to :affiliation

  has_many :jobs

  validates :name, :presence => true
  validates :surname, :presence => true
  validates :email, :confirmation => true, :presence => true
  validates :email_confirmation, :presence => true
  
  attr_accessible :name,
                  :surname,
                  :email, :email_confirmation, 
                  :phone_number,
                  :company,
                  :position,
                  :affiliation_id, :affiliation,
                  :country_id, :country

#  def self.search(search)       # do with scope is maybe better  #what do we need this for?
#    if search
#      where('name LIKE ?', "%#{search}%")
#    else
#      scoped
#    end
#  end

  def full_name
    "#{self.name} #{self.surname}"
  end

end
