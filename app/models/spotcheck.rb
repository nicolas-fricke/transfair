class Spotcheck < ActiveRecord::Base
  attr_accessible :job_id, :rating, :rating_text, :service_partner_id

  belongs_to :job
  belongs_to :service_partner
end
