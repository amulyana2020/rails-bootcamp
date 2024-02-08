# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#
#
# student = Student.create({
#   first_name: "Nieka",
#   last_name: "Adhara",
#   email: "niekaadhara@gmail.com"
# })

# 20.times do |i|
#   Student.create({
#     first_name: "Student #{i + 1}",
#     last_name: "Student #{i + 1}",
#     email: "student#{i + 1}@gmail.com"
#   })
# end

# Student.all.each do |student|
#   student.blogs.create( title: "Blog Post #{student.id}", content: "Content post student with ID #{student.id}")
# end
