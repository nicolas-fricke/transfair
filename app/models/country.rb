class Country < ActiveRecord::Base
  attr_accessible :currency, :name
  has_many :fair_wages, :clients
end

