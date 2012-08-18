class Job < ActiveRecord::Base
  belongs_to :client
  belongs_to :job_type
  belongs_to :job_status
  belongs_to :language
  belongs_to :transcription_information

  attr_accessible :client_paid, :name, :rating_client, :rating_text,
                  :job_type, :job_status, :deadline_client, :language,
                  :client, :deadline_intern, :service_partners

  has_many :employments
  has_many :service_partners, :through => :employments

  validates :name, :presence => true
  #validates :client_id, :presence => true      #automatically set when new job
  validates :deadline_client, :presence => true
  #validates :deadline_client, :date => {:after => Time.now}
  #validates :deadline_intern, :date => {:after => Time.now}
  #validates :job_status_id, :presence => true


 # def init
  #  self.status ||= JobStatus.first
  #end

  def string_service_partners
    count = service_partners.length
    if count == 0
      return 'none'
    elsif count == 1
      return service_partners.first.full_name
    else
      return 'multiple'
    end
  end
end