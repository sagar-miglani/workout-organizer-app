class CreateDailyWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_workouts do |t|
      t.integer :user_id
      t.integer :workout_id
      t.string :date
      t.string :day_of_week
      t.integer :duration

      t.timestamps
    end
  end
end
