class CreateWorkoutCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :workout_categories do |t|
      t.Integer :workout_id
      t.Integer :category_id

      t.timestamps
    end
  end
end
