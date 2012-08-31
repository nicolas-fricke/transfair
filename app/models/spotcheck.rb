class Spotcheck < ActiveRecord::Base
  belongs_to :job
  belongs_to :service_partner

  # TODO: Do we need anything accessible here? I think this gets all just set
  #       by program logic – or am I wrong?
  attr_accessible :job_id, :job,
                  :service_partner_id, :service_partner
                  # :rating,
                  # :rating_text
end
