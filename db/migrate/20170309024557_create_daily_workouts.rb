class CreateDailyWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_workouts do |t|
      t.Integer :user_id
      t.Integer :workout_id
      t.string :date
      t.string :day_of_week
      t.Integer :duration

      t.timestamps
    end
  end
end
