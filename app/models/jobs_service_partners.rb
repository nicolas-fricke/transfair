class JobsServicePartners < ActiveRecord::Base
  belongs_to :job
  belongs_to :service_partner
  attr_accessible :paid
end
