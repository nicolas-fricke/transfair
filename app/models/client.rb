class Client < ActiveRecord::Base
  attr_accessible :company, :email, :name, :phone_number, :position, :surname,
                  :affiliation, :country
  belongs_to :country
  belongs_to :affiliation

  has_many :jobs

  validates :name, :presence => true
  validates :surname, :presence => true
  validates :email, :presence => true
  validates :country_id, :presence => true



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