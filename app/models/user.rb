class User < ApplicationRecord
	has_secure_password
	has_many :daily_workouts
end
