class DropCountriesTranscriptionInformationTable < ActiveRecord::Migration
  def up
    drop_table :countries_transcription_information
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
