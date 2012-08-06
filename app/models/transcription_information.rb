class TranscriptionInformation < ActiveRecord::Base
  attr_accessible :audio_quality, :background_information, :category_id, :duration, :ending_point, :field_id, :is_content_focused, :is_detailed_transcription, :number_speaker, :recurring_denominations, :speaker_accent, :starting_point, :with_emotion_interjection, :with_interruption, :with_pause, :with_pause_interjection, :with_time_stamp

  has_and_belongs_to_many :origin_of_speakers, :class_name => "Country"
end
