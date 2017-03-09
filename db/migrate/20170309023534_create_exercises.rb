class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :equipment
      t.string :body_parts
      t.string :difficulty
      t.string :description

      t.timestamps
    end
  end
end
