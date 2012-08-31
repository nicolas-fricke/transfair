class Spotcheck < ActiveRecord::Base
  belongs_to :job
  belongs_to :service_partner

  attr_accessible :job_id,
                  :service_partner_id,
                  :rating,
                  :rating_text
end
