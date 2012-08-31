class FairWage < ActiveRecord::Base
  belongs_to :country

  attr_accessible :amount, # TODO: Not sure, if this should be removed due to security
                  :date,
                  :country_id, :country
end
