class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image_location
      t.string :exercise_id

      t.timestamps
    end
  end
end
