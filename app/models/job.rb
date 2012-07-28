class Job < ActiveRecord::Base
  belongs_to :client
  belongs_to :job_type
  belongs_to :job_status
  attr_accessible :client_paid, :deadline_client, :deadline_intern, :name, :rating, :rating_text, :client
end
