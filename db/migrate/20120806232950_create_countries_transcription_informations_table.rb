class CreateCountriesTranscriptionInformationsTable < ActiveRecord::Migration
  def up
    create_table 'countries_transcription_informations', :id => false do |t|
      t.integer :country_id
      t.integer :transcription_information_id
    end
  end

  def down
    drop_table 'countries_transcription_informations'
  end
end
