class Client < User
  has_many :jobs

  validates :name, :presence => true
  validates :surname, :presence => true

  attr_accessible :company,
                  :position

#  def self.search(search)       # do with scope is maybe better  #what do we need this for?
#    if search
#      where('name LIKE ?', "%#{search}%")
#    else
#      scoped
#    end
#  end
end
