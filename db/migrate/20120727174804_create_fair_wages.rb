class CreateFairWages < ActiveRecord::Migration
  def change
    create_table :fair_wages do |t|
      t.date :date
      t.float :amount
      t.references :country

      t.timestamps
    end
    add_index :fair_wages, :country_id
  end
end
