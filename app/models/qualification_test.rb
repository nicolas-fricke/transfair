class QualificationTest < ActiveRecord::Base
  belongs_to :job_type
  belongs_to :language
  has_one :service_partner

  attr_accessible :job_type_id,
                  :language_id,
                  :result
end
