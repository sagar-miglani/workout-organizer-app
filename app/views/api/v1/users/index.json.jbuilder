json.array! @users.each do |user|
	json.id user.id
	json.first_name user.first_name
	json.last_name user.last_name
	json.date_of_birth user.date_of_birth
	json.height user.height
	json.weight user.weight
	json.gender user.gender
	json.email user.email
	json.password user.password
end