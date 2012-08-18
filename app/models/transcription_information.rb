class TranscriptionInformation < ActiveRecord::Base

  attr_accessible :audio_quality, :background_information, :category_id, :duration, :ending_point, :field_id, :is_content_focused, :is_detailed_transcription, :number_speaker, :recurring_denominations, :speaker_accent, :starting_point, :with_emotion_interjection, :with_interruption, :with_pause, :with_pause_interjection, :with_time_stamp

  belongs_to :category
  has_and_belongs_to_many :origin_of_speakers, :class_name => "Country"
  has_one :job

  def price
    if (category_id.nil?)
      return -1
    end

    if (Category.find_by_id(category_id).nil?)
      return -2
    end
    category_name = Category.find_by_id(category_id).name
    case category_name
      when 'Lab'
        price = 1
      when 'Basic'
        price = 2
      when 'Premium'
        price = 3
    end

    return price
  end

  def minimum_deadline

  end

  def duration_minutes
    require 'time_diff'
    duration.diff()
  end

end
