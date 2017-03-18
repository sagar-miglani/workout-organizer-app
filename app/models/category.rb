class Category < ApplicationRecord
	has_many :workout_categories
	has_many :exercises, through: :workout_categories
end
