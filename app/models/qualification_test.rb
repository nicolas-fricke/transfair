class QualificationTest < ActiveRecord::Base
  belongs_to :job_type
  belongs_to :language
  has_one :service_partner

  # TODO: Do we need anything accessible here? I think this gets all just set
  #       by program logic – or am I wrong?
  attr_accessible :job_type_id,
                  :language_id
                  # :result
end
