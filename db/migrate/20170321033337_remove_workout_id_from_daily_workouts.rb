class RemoveWorkoutIdFromDailyWorkouts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :daily_workouts, :workout_id, :integer
  end
end
