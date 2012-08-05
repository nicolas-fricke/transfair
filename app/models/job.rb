class Job < ActiveRecord::Base
  belongs_to :client
  belongs_to :job_type
  belongs_to :job_status
  attr_accessible :client_paid, :name, :rating_client, :rating_text,
                  :job_type_id, :job_status_id

  has_many :employments
  has_many :service_partners, :through => :employments

end
