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




a1 = Assignature.new(name:"Matematica Inicial", teacher_id: teacher.id, batch_id: batch.id)
a2 = Assignature.new(name:"Matematica Avanzada", teacher_id: teacher.id, batch_id: batch.id)
a3 = Assignature.new(name:"Lengua 1", teacher_id: teacher.id, batch_id: batch.id)

a1.save!
a2.save!
a3.save!

#--- Seed Lesssons de prueba--
l1 = Lesson.new(assignature_id: a1.id,name: "Calculo", video: "https://www.youtube.com/embed/UbqjPCAjUfg", link:"https://es.wikipedia.org/wiki/C%C3%A1lculo_infinitesimal"  )
l2 = Lesson.new(assignature_id: a1.id,name: "Limites", video: "https://www.youtube.com/embed/o2UTk8bsLS0", link: "https://es.wikipedia.org/wiki/L%C3%ADmite"  )
l3 = Lesson.new(assignature_id: a1.id,name: "Derivadas", video: "https://www.youtube.com/embed/uK4-s0ojHFg", link:"https://es.wikipedia.org/wiki/Derivada"  )
l4 = Lesson.new(assignature_id: a3.id,name: "La palabra", video:"https://www.youtube.com/embed/zHlER3p3pko")
l5 = Lesson.new(assignature_id: a3.id,name: "Sustantivo", video:"https://www.youtube.com/embed/QndKx287w8")
l6 = Lesson.new(assignature_id: a3.id,name: "Ortografia", video:"https://www.youtube.com/embed/XVVheqqMOu4")

l1.save!
l2.save!
l3.save!
l4.save!
l5.save!
l6.save!


#--- Seed homework de prueba--
h1 = Homework.new(name: " Numeros enteros"  ,content: " Ordenar, en sentido creciente, representar gráficamente, y calcular los opuestos y valores absolutos de los siguientes números enteros: 8, −6, −5, 3, −2, 4, −4, 0, 7", type_off: "homework", answer: "", lesson_id: l1.id)
h2 = Homework.new(name: " Valor absoluto y valor opuesto", content: "Representar gráficamente, y calcular los opuestos y valores absolutos de los siguientes números enteros: −4, 6, −2, 1, −5, 0, 9", type_off: "homework",answer: "", lesson_id: l1.id)
h3 = Homework.new(name:'Factorizar', content: "Sacar factor común en las expresiones:
1) 3 · 2 + 3 · (−5) =
2) (−2) · 12 + (−2) · (−6) =
3) 8 · 5 + 8 =
4) (−3) · (−2) + (−3) · (−5) = "  ,type_off: "homework", answer: "",  lesson_id: l1.id)
h4 = Homework.new(name:'Aplicacion Derivada', content: " ¿Con qué rapidez baja el nivel del agua contenida en un depósito cilíndrico si estamos vaciándolo a razón de 3000 litros por minuto? ", type_off: "homework",answer: "", lesson_id: l3.id)
h5 = Homework.new(name: 'Velocidad en un punto', content: " Un punto P se mueve sobre la parte de la parábola x D y 2 situada en el primer cuadrante de forma que su coordenada x está aumentando a razón de 5cm/sg. Calcular la velocidad a la que el punto P se aleja del origen cuando x=9", type_off: "homework",answer: "", lesson_id: l3.id)
h6 = Homework.new(name:'Velocidad', content: "Un barco A se desplaza hacia el oeste con una velocidad de 20 millas por hora y otro barco B avanza hacia el norte a 15 millas por hora. Ambos se dirigen hacia un punto O del océano en el cual sus rutas se cruzan. Sabiendo que las distancias iniciales de los barcos A y B al punto O son, respectivamente, de 15 y de 60 millas, se pregunta: ¿A qué velocidad se acercan (o se alejan) los barcos entre sí cuando ha transcurrido una hora? ¿Y cuando han transcurrido 2 horas? ¿En qué momento están más próximos uno de otro?", type_off: "homework",answer: "",  lesson_id: l3.id)
h7 = Homework.new(name:'Imagen de la derivada', content: " Calcular el número de ceros y la imagen de la función f : R  R dada por f(x)=x^6-3x^2+2", type_off: "homework", answer: "", lesson_id: l2.id)
h8 = Homework.new(name:'Justificar ecuacion', content: "Justifica que la ecuación x^2 = x sen x + cos x . Tiene exactamente dos soluciones reales", type_off: "homework", answer: "", lesson_id: l2.id)
h9 = Homework.new(name:'Refutar funciones derivables', content: "Prueba que las únicas funciones n veces derivables con derivada de orden n constante son las funciones polinómicas de grado", type_off: "flashcard", answer: "",  lesson_id: l2.id)
h10 = Homework.new(name:'Tipos de Textos',content: "Escribe una conversación entre un médico y un paciente que llega a su consulta. Para ello, debes tener en cuenta las normas generalmente aceptadas en las conversaciones, así como las expresiones que se suelen utilizar", type_off: "flashcard",answer: "",lesson_id:l4.id)
h11 = Homework.new(name: 'Definición de palabras', content: " Define las siguientes palabras teniendo en cuenta que la palabra definida no puede repetirse en la definición: 1. Silla -  2. Mesa – 3. Armario",type_off: "homework", answer: "", lesson_id:  l4.id)
h12 = Homework.new(name: 'Puntuacion', content: " En el siguiente texto señala con diferentes colores el punto y seguido, el punto y aparte y el punto final. A continuación, explica la diferencia entre cada tipo de punto. Esta es la historia de Pergamino, el hijo del bibliotecario del reino eslavo. Una historia que trata sobre un libro maldito perdido, sobre vanidosas profetisas y tortuosos oráculos, y sobre criaturas y poderes antiguos como la noche. Estas son las aventuras de un niño, el hijo del Cazalibros, al que no le daba miedo viajar en compañía de demonios, ni de brujos, ni de legendarios guerreros condenados a la locura con tal de salvar a su padre. Esta es la historia de Pergamino, un niño que vivía en una biblioteca llena de libros y que un buen día descubrió que no todos los relatos tienen finales felices.", 
type_off: "flashcard", answer: "",  lesson_id:  l6.id)
h13 = Homework.new(name: 'Uso de puntos', content: " Escribe dos puntos o puntos suspensivos cuando sea necesario. a) No he podido olvidar sus palabras «No me gustan las despedidas, pero ». b) A mi abuelo le gustaba coleccionar de todo sellos, libros antiguos, postales de otros países, relojes de curioso diseño c) No sé creo que me dijo que llegaría a las cinco. d) Ya lo sabes, como dice el refrán «A mal tiempo ». e) En la maleta llevo cinco camisetas, dos pantalones, varios calcetines y calzoncillos, una toalla, el neceser.", type_off: "homework", answer: "",  lesson_id:  l6.id)
h14 = Homework.new(name: 'Sustantivos', content: 'Indica si las siguientes afirmaciones son verdaderas o falsa. _ Los sustantivos pueden ir precedidos por un artículo u otro determinativo. _ Los sustantivos no pueden combinarse con otras palabras. _ Los sustantivos pueden desempeñar una función en la oración, solos o en un grupo. _ Los sustantivos siempre desempeñan una función dentro de un grupo. _ Los sustantivos tienen concordancia con los adjetivos que les acompañan, pero no siempre con los artículos. _ La concordancia se da siempre entre los sustantivos y los artículos y adjetivos que les acompañan', type_off: "homework", answer: "",  lesson_id:  l5.id)



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
h12.save!
h13.save!
h14.save!


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

puts 'finish seed'
