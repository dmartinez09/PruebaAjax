# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Complaint.destroy_all
User.destroy_all
enterprise.destroy_all

30.times do |c|
	a = enterprise.create(name: "enterprise #{c+1}")
	b = User.create(name: "Usuario #{c+1}", email: "usuario#{c+1}@usuario.cl")
	5.times do |r|
		Complaint.create(content: "contenido #{r}", user_id: b.id, enterprise_id: a.id)
	end
end


AdminUser.create!(email: 'admin@example.com', password: '123456', password_confirmation: 'password')