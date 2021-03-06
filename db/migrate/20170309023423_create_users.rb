class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.integer :height
      t.integer :weight
      t.string :gender
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
