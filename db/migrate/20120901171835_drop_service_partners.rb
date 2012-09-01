class DropServicePartners < ActiveRecord::Migration
  def up
    drop_table :service_partners
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
