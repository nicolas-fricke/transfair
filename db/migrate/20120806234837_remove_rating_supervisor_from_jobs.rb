class RemoveRatingSupervisorFromJobs < ActiveRecord::Migration
  def up
    remove_column :jobs, :rating_supervisor
  end

  def down
    add_column :jobs, :rating_supervisor, :integer
  end
end
