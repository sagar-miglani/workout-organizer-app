class ChangeWorkoutIdToExerciseId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :workout_categories, :workout_id, :exercise_id
  end
end
