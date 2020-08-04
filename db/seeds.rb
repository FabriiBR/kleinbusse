# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Batch.destroy_all
Course.destroy_all
Assignature.destroy_all
Lesson.destroy_all



puts 'start seed'
 #--- Seed alumn de prueba--

batch = Batch.create!(grade: 101 , start_year:2020)
batch2 = Batch.create!(grade: 102 , start_year:2020)

user = User.new(email:"student@student.com", password:"123456", first_name:"Juan", last_name:"Rodriguez", role:"student", institute:"Cardenal Newman", birthday: "20/04/2014", batch_id: batch.id)

user.save!

teacher = User.new(email: "teacher@teacher.com", password:"123456", first_name:"Florencia", last_name:"Fernandez", role:"teacher", institute:"Cardenal Newman", birthday: "12/04/1965", batch_id: batch.id)
teacher.save!

a1 = Assignature.new(name:"Matematica 1", teacher_id: teacher.id, batch_id: batch.id)
a2 = Assignature.new(name:"Matematica 2", teacher_id: teacher.id, batch_id: batch2.id)
a3 = Assignature.new(name:"Lengua 1", teacher_id: teacher.id, batch_id: batch.id)
#mat1: techer.id = 4, barch:id3
a1.save!
a2.save!
a3.save!

#--- Seed Lesssons de prueba--
l1 = Lesson.new(name:'Calculo', assignature_id: a1.id)
l2 = Lesson.new(name:'Limite', assignature_id: a1.id)
l3 = Lesson.new(name:'Derivada', assignature_id: a2.id)
l4 = Lesson.new(name:'Prefijos', assignature_id: a3.id)
l5 = Lesson.new(name:'Sufijos', assignature_id: a3.id)

#--- Seed Lesssons de prueba--
l1.save!
l2.save!
l3.save!
l4.save!
l5.save!


#--- Seed homework de prueba--
h1 = Homework.new(name:'Este es un ejercicio de Calculo',content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "", lesson_id: l1.id)
h2 = Homework.new(name:'Este es un ejercicio de Calculo2', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "", lesson_id: l1.id)
h3 = Homework.new(name:'Este es un ejercicio de Calculo3', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "",  lesson_id: l1.id)
h4 = Homework.new(name:'Este es un ejercicio de Limite', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "", lesson_id: l2.id)
h5 = Homework.new(name:'Este es un ejercicio de Limite2', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "", lesson_id: l2.id)
h6 = Homework.new(name:'Este es un ejercicio de Limite3', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "",  lesson_id: l2.id)
h7 = Homework.new(name:'Este es un ejercicio de Derivada', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "", lesson_id: l3.id)
h8 = Homework.new(name:'Este es un ejercicio de Derivada2', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "", lesson_id: l3.id)
h9 = Homework.new(name:'Este es un ejercicio de Derivada', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "",  lesson_id: l3.id)
h10 = Homework.new(name:'Ejercicios de Prefijos', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "",  c: l4.id)
h11 = Homework.new(name:'Ejercicios de SUfijos', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", answer: "",  lesson_id: l5.id)




h1.save!
h2.save!
h3.save!
h4.save!
h5.save!
h6.save!
h7.save!
h8.save!
h9.save!
h10.save!

puts 'finish seed'