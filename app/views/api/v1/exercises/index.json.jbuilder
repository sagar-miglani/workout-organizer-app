json.array! @exercises.each do |exercise|
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

	json.created_at exercise.created_at
	json.updated_at exercise.updated_at
end