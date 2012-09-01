class Client < User
  has_many :jobs

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
