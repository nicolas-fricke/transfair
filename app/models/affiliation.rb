class Affiliation < ActiveRecord::Base
  has_many :clients_id

  attr_accessible :name
end
