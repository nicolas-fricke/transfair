class AddTranscriptionInformationIdToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :trancription_information_id, :integer
  end
end
