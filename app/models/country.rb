class Country < ActiveRecord::Base
  has_one :fair_wage
  attr_accessible :currency, :name
end
