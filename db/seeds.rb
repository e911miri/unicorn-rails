# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
student = User.create(email: "student@futa.com", password: "password", username: "csc/00/0000")
staff = User.create(email: "staff@futa.com", password: "password", username: "staff/00/0000")
Admin.create(email: "admin@futa.com", password: "password")
department = Department.create(name: "Computer Science Department", hod: "Dr Toba", description: "The department of computer Science")
profile=UserProfile.create(first_name: "Test", phone: "07037290250")