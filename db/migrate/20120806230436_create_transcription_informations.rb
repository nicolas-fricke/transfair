class CreateTranscriptionInformations < ActiveRecord::Migration
  def change
    create_table :transcription_informations do |t|
      t.time :duration
      t.integer :category_id
      t.time :starting_point
      t.time :ending_point
      t.boolean :is_detailed_transcription
      t.integer :audio_quality
      t.integer :speaker_accent
      t.integer :number_speaker
      t.boolean :is_content_focused
      t.boolean :with_pause_interjection
      t.boolean :with_emotion_interjection
      t.boolean :with_pause
      t.boolean :with_interruption
      t.boolean :with_time_stamp
      t.integer :field_id
      t.text :background_information
      t.text :recurring_denominations

      t.timestamps
    end
  end
end
