class TranscriptionInformation < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :origin_of_speakers, :class_name => "Country"
  has_one :job

  attr_accessible :duration,
                  :category_id,
                  :starting_point,
                  :ending_point,
                  :is_detailed_transcription,
                  :audio_quality,
                  :speaker_accent,
                  :number_speaker,
                  :is_content_focused,
                  :with_pause_interjection,
                  :with_emotion_interjection,
                  :with_pause,
                  :with_interruption,
                  :with_time_stamp,
                  :field_id,
                  :background_information,
                  :recurring_denominations

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
