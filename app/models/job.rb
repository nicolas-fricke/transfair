class Job < ActiveRecord::Base
  belongs_to :client
  belongs_to :job_type
  belongs_to :job_status
  belongs_to :language_id
  attr_accessible :client_paid, :name, :rating_client, :rating_text,
                  :job_type_id, :job_status_id, :deadline_client, :language_id

  has_many :employments
  has_many :service_partners, :through => :employments

  #validates :client_id, :presence => true      #automatically set when new job
  validates :deadline_client, :presence => true
  #validates :deadline_client, :date => {:after => Time.now}
  #validates :deadline_intern, :date => {:after => Time.now}
  #validates :job_status_id, :presence => true


  def init
    self.status ||= JobStatus.first
  end

end
