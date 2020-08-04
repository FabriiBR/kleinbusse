# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Assignature.destroy_all
User.destroy_all
Batch.destroy_all

batch = Batch.create!(grade: 101 , start_year:2020)
batch2 = Batch.create!(grade: 102 , start_year:2020)

user = User.new(email:"student@student.com", password:"123456", first_name:"Juan", last_name:"Rodriguez", role:"student", institute:"Cardenal Newman", birthday: "20/04/2014", batch_id: batch.id)

user.save!

teacher = User.new(email: "teacher@teacher.com", password:"123456", first_name:"Florencia", last_name:"Fernandez", role:"teacher", institute:"Cardenal Newman", birthday: "12/04/1965", batch_id: batch.id)
teacher.save!

a1 = Assignature.new(name:"Matematica 1", teacher_id: teacher.id, batch_id: batch.id)
a2 = Assignature.new(name:"Matematica 2", teacher_id: teacher.id, batch_id: batch2.id)
a3 = Assignature.new(name:"Lengua 1", teacher_id: teacher.id, batch_id: batch.id)

a1.save!
a2.save!
a3.save!

puts batch
puts user
puts teacher
puts a1
puts a2
puts a3
