# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
location = Location.create()
resume = Resume.create(first_name: "Test", last_name: "Test", location: location)
skill = Skill.create(resume: resume, name: "Test")
interest = Interest.create(resume: resume, name: "Test")
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?