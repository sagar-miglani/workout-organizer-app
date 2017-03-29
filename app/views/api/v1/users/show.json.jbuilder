json.id @user.id
json.first_name @user.first_name
json.last_name @user.last_name
json.dob @user.date_of_birth
json.height @user.height
json.weight @user.weight
json.gender @user.gender
json.email @user.email
json.password @user.password_digest

json.daily_workout @user.daily_workouts.each do |daily_workout|
	json.id daily_workout.id
	json.name daily_workout.name
	json.user_id daily_workout.user_id
	json.date daily_workout.date
	json.day daily_workout.day_of_week
	json.duration daily_workout.duration

		json.exercises daily_workout.exercises.each do |exercise|
			json.id exercise.id
			json.name exercise.name
			json.equipment exercise.equipment
			json.difficulty exercise.difficulty
			json.description exercise.description

			json.categories exercise.categories.each do |category|
				json.category category.name
			end

			json.images exercise.images.each do |image|
				json.image_url image.image_location
			end
		end
end



json.created_at @user.created_at
json.updated_at @user.updated_at
