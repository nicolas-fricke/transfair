class FairWage < ActiveRecord::Base
  belongs_to :country
  attr_accessible :amount, :date, :country_id
end
