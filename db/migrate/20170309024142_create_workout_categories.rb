class CreateWorkoutCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :workout_categories do |t|
      t.integer :workout_id
      t.integer :category_id

      t.timestamps
    end
  end
end
