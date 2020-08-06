# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Lesson.destroy_all
User.destroy_all
Assignature.destroy_all
Event.destroy_all
Course.destroy_all
Batch.destroy_all



puts 'start seed'
 #--- Seed alumn de prueba--

batch = Batch.create!(grade: 101 , start_year:2020)
batch2 = Batch.create!(grade: 102 , start_year:2020)
batch3 = Batch.create!(grade: 201 , start_year:2019)
batch4 = Batch.create!(grade: 202 , start_year:2019)

user = User.new(email:"student@student.com", password:"123456", first_name:"Juan", last_name:"Rodriguez", role:"student", institute:"Cardenal Newman", birthday: "20/04/2014", batch_id: batch.id)

user.save!

teacher = User.new(email: "teacher@teacher.com", password:"123456", first_name:"Florencia", last_name:"Fernandez", role:"teacher", institute:"Cardenal Newman", birthday: "12/04/1965", batch_id: batch.id)
teacher.save!


a1 = Assignature.new(name:"Matematica 1", teacher_id: teacher.id, batch_id: batch.id)
a3 = Assignature.new(name:"Lengua 1", teacher_id: teacher.id, batch_id: batch.id)
#mat1: techer.id = 4, barch:id3
a1.save!
a3.save!

#--- Seed Lesssons de prueba--
l1 = Lesson.new(assignature_id: a1.id,name: "Calculo", video: "https://www.youtube.com/embed/UbqjPCAjUfg", link:"https://es.wikipedia.org/wiki/C%C3%A1lculo_infinitesimal"  )
l2 = Lesson.new(assignature_id: a1.id,name: "Limites", video: "https://www.youtube.com/embed/o2UTk8bsLS0" , link: "https://es.wikipedia.org/wiki/L%C3%ADmite"  )
l3 = Lesson.new(assignature_id: a1.id,name: "Derivadas", video: "https://www.youtube.com/embed/uK4-s0ojHFg", link:"https://es.wikipedia.org/wiki/Derivada"  )
l4 = Lesson.new(name:'Prefijos', assignature_id: a3.id)
l5 = Lesson.new(name:'Sufijos', assignature_id: a3.id)

l1.save!
l2.save!
l3.save!
l4.save!
l5.save!


#--- Seed homework de prueba--
h1 = Homework.new(name:'Este es un ejercicio de Calculo',content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", type_off: "homework", answer: "", lesson_id: l1.id)
h2 = Homework.new(name:'Este es un ejercicio de Calculo2', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", type_off: "homework",answer: "", lesson_id: l1.id)
h3 = Homework.new(name:'Este es un ejercicio de Calculo3', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",type_off: "homework", answer: "",  lesson_id: l1.id)
h4 = Homework.new(name:'Este es un ejercicio de Limite', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", type_off: "homework",answer: "", lesson_id: l2.id)
h5 = Homework.new(name:'Este es un ejercicio de Limite2', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", type_off: "homework",answer: "", lesson_id: l2.id)
h6 = Homework.new(name:'Este es un ejercicio de Limite3', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", type_off: "homework",answer: "",  lesson_id: l2.id)
h7 = Homework.new(name:'Este es un ejercicio de Derivada', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", type_off: "flashcard", answer: "", lesson_id: l3.id)
h8 = Homework.new(name:'Este es un ejercicio de Derivada2', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",type_off: "flashcard",  answer: "", lesson_id: l3.id)
h9 = Homework.new(name:'Este es un ejercicio de Derivada', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", type_off: "flashcard",  answer: "",  lesson_id: l3.id)
h10 = Homework.new(name:'Ejercicios de Prefijos', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", type_off: "flashcard", answer: "",  lesson_id:  l4.id)
h11 = Homework.new(name:'Ejercicios de SUfijos', content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", type_off: "flashcard", answer: "",  lesson_id: l5.id)

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
h11.save!

#--- Seed course de prueba--

course1 = Course.create!(name: '1A', batch_id: batch.id)
course2 = Course.create!(name: '1B', batch_id: batch2.id)
course3 = Course.create!(name: '2A', batch_id: batch3.id)
course4 = Course.create!(name: '2B', batch_id: batch4.id)

#--- Seed events de prueba--

event1 = Event.create!(date: DateTime.strptime("08/14/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Matematica', eventable_id:"Examen", course_id: course1.id)
event2 = Event.create!(date: DateTime.strptime("08/15/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Lenguaje', eventable_id:"Parcial", course_id: course1.id)
event3 = Event.create!(date: DateTime.strptime("08/14/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Biologia', eventable_id:"Examen", course_id: course2.id)
event4 = Event.create!(date: DateTime.strptime("08/15/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Fisica', eventable_id:"Repaso", course_id: course2.id)
event5 = Event.create!(date: DateTime.strptime("08/14/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Quimica', eventable_id:"Examen", course_id: course3.id)
event6 = Event.create!(date: DateTime.strptime("08/15/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Sociales', eventable_id:"Examen", course_id: course3.id)
event7 = Event.create!(date: DateTime.strptime("08/14/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Religion', eventable_id:"Parcial", course_id: course4.id)
event8 = Event.create!(date: DateTime.strptime("08/15/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Filosofia', eventable_id:"Repaso", course_id: course4.id)
event9 = Event.create!(date: DateTime.strptime("08/13/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Festival del Deporte', course_id: course1.id)
event10 = Event.create!(date: DateTime.strptime("08/13/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Festival del Deporte', course_id: course2.id)
event11 = Event.create!(date: DateTime.strptime("08/13/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Festival del Deporte', course_id: course3.id)
event12 = Event.create!(date: DateTime.strptime("08/13/2020 14:00", "%m/%d/%Y %H:%M"), eventable_type: 'Festival del Deporte', course_id: course4.id)


puts 'finish seed'

