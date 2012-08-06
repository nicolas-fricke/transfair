class AddLanguageIdToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :language_id, :integer
  end
end
