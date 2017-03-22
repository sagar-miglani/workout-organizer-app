json.name @daily_workout.id
json.user_id @daily_workout.name
json.date @daily_workout.date
json.day @daily_workout.day_of_week
json.duration @daily_workout.duration

json.exercises @daily_workout.exercises.each do |exercise|
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

json.created_at @daily_workout.created_at
json.updated_at @daily_workout.updated_at
