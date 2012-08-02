class Job < ActiveRecord::Base
  belongs_to :client
  belongs_to :job_type
  belongs_to :job_status
  attr_accessible :client_paid, :deadline_client, :deadline_intern, :name, :rating_client, :rating_text,
                  :client_id, :client, :job_type_id, :job_status_id

  def client
    Client.find_by_id(self.client_id)
  end

  def job_type
    JobType.find_by_id(self.job_type_id)
  end

  def job_status
    JobStatus.find_by_id(self.job_status_id)
  end

end
