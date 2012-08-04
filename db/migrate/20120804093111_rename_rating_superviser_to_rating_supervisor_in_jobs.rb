class RenameRatingSuperviserToRatingSupervisorInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :rating_superviser, :rating_supervisor
  end
end
