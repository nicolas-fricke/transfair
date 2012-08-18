class QualificationTest < ActiveRecord::Base
  attr_accessible :job_type_id, :language_id, :result

  belongs_to :job_type
  belongs_to :language
  has_one :service_partner
end
