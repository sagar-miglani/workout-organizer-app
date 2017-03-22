class DailyWorkout < ApplicationRecord
	belongs_to :user
	has_many :exercises
	has_many :workoutexercises
	has_many :exercises, through: :workoutexercises
end
