class Exercise < ApplicationRecord
	has_many :workout_categories
	has_many :categories, through: :workout_categories
	has_many :workoutexercises
	has_many :exercises, through: :workoutexercises
	has_many :images
end
