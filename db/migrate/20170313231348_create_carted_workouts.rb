class CreateCartedWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_workouts do |t|
      t.integer :exercise_id
      t.integer :daily_workout_id
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
