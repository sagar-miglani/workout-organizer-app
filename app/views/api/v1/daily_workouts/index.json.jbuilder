json.array! @daily_workout.each do |daily|
	json.name daily.id
	json.user_id daily.name
	json.date daily.date
	json.day daily.day_of_week
	json.duration daily.duration

	json.exercises daily.exercises.each do |exercise|
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

	json.created_at daily.created_at
	json.updated_at daily.updated_at
end
