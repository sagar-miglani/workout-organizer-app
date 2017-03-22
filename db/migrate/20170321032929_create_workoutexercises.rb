class CreateWorkoutexercises < ActiveRecord::Migration[5.0]
  def change
    create_table :workoutexercises do |t|
      t.integer :exercise_id
      t.integer :daily_workout_id

      t.timestamps
    end
  end
end
