class Workoutexercise < ApplicationRecord
	belongs_to :exercise
	belongs_to :daily_workout
end
