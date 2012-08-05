class Employment < ActiveRecord::Base
  attr_accessible :job_id, :paid, :service_partner_id
  belongs_to :job
  belongs_to :service_partner
end
