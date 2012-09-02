require 'state_machine'

class Job < ActiveRecord::Base
  belongs_to :client
  belongs_to :job_type
  belongs_to :job_status
  belongs_to :language
  belongs_to :transcription_information
  has_many :employments
  has_many :service_partners, :through => :employments

  attr_accessible :name,
                  :client_id, :client,
                  :deadline_client,
                  # :deadline_intern,
                  :job_type_id, :job_type,
                  # :job_status_id,
                  # :client_paid,
                  # :rating_client,
                  # :rating_text,
                  # :special_price,
                  :language_id, :language,
                  :trancription_information_id, :trancription_information

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

  state_machine :initial => :submitted do

    event :accept do
      transition :submitted => :accepted
    end

    event :decline do
      transition :submitted => :declined
    end


    state :submitted do

    end

    state :accepted do

    end

    state :decline do

    end

  end

end
