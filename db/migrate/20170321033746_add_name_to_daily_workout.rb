class AddNameToDailyWorkout < ActiveRecord::Migration[5.0]
  def change
  	add_column :daily_workouts, :name, :string
  end
end
