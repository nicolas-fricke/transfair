class DropClients < ActiveRecord::Migration
  def up
    drop_table :clients
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
