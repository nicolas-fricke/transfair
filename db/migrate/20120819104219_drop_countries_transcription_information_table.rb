class DropCountriesTranscriptionInformationTable < ActiveRecord::Migration
  def up
    drop_table "countries_transcription_informations"
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
