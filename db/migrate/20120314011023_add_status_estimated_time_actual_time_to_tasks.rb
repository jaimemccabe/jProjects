class AddStatusEstimatedTimeActualTimeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :status, :integer

    add_column :tasks, :estimated_time_in_hours, :integer

    add_column :tasks, :actual_time_in_hours, :integer

  end
end
