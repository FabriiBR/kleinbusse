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
Homework.destroy_all
UserHomework.destroy_all

puts 'start seed'
 #--- Seed alumn de prueba--

batch = Batch.create!(grade: 101 , start_year:2020)
batch2 = Batch.create!(grade: 102 , start_year:2020)
batch3 = Batch.create!(grade: 201 , start_year:2019)
batch4 = Batch.create!(grade: 202 , start_year:2019)

user = User.new(email:"student@student.com", password:"123456", first_name:"Juan", last_name:"Rodriguez", role:"student", institute:"Cardenal Newman", birthday: "20/04/2014", batch_id: batch.id)

user.save!

t1 = User.new(email: "teacher@teacher.com", password:"123456", first_name:"Florencia", last_name:"Fernandez", role:"teacher", institute:"Cardenal Newman", birthday: "12/04/1965", batch_id: batch.id)
t1.save!
t2 = User.new(email: "teacher2@teacher.com", password:"123456", first_name:"Carlos", last_name:"Gomez", role:"teacher", institute:"Cardenal Newman", birthday: "12/04/1985", batch_id: batch.id)
t2.save!
t3 = User.new(email: "teacher3@teacher.com", password:"123456", first_name:"Romina", last_name:"Perez", role:"teacher", institute:"Cardenal Newman", birthday: "12/04/1985", batch_id: batch.id)
t3.save!



a1 = Assignature.new(name:"Matematica Inicial", teacher_id: t1.id, batch_id: batch.id)
a2 = Assignature.new(name:"Matematica Avanzada", teacher_id: t1.id, batch_id: batch.id)
a3 = Assignature.new(name:"Lengua 1", teacher_id: t2.id, batch_id: batch.id)
a4 = Assignature.new(name:"Biologia", teacher_id: t3.id, batch_id: batch.id)
a5 = Assignature.new(name:"Fisica", teacher_id: t1.id, batch_id: batch.id)
a6 = Assignature.new(name:"Filosofia", teacher_id: t2.id, batch_id: batch.id)
a7 = Assignature.new(name:"Quimica", teacher_id: t3.id, batch_id: batch.id)



a1.save!
a2.save!
a3.save!
a4.save!
a5.save!
a6.save!
a7.save!


#--- Seed Lesssons de prueba--
l1 = Lesson.new(assignature_id: a1.id,name: "Calculo", video: "https://www.youtube.com/embed/UbqjPCAjUfg", link:"https://es.wikipedia.org/wiki/C%C3%A1lculo_infinitesimal"  )
l2 = Lesson.new(assignature_id: a1.id,name: "Limites", video: "https://www.youtube.com/embed/o2UTk8bsLS0", link: "https://es.wikipedia.org/wiki/L%C3%ADmite"  )
l3 = Lesson.new(assignature_id: a1.id,name: "Derivadas", video: "https://www.youtube.com/embed/uK4-s0ojHFg", link:"https://es.wikipedia.org/wiki/Derivada"  )
l4 = Lesson.new(assignature_id: a3.id,name: "La palabra", video:"https://www.youtube.com/embed/zHlER3p3pko", link:"https://es.wikipedia.org/wiki/Uso_del_lenguaje")
l5 = Lesson.new(assignature_id: a3.id,name: "Sustantivo", video:"https://www.youtube.com/embed/QndKx287w8", link:"https://es.wikipedia.org/wiki/Sustantivo#:~:text=Los%20sustantivos%20son%20palabras%20cuyos,de%20hechos%20o%20relaciones%20gramaticales.")
l6 = Lesson.new(assignature_id: a3.id,name: "Ortografia", video:"https://www.youtube.com/embed/XVVheqqMOu4", link:"https://es.wikipedia.org/wiki/Ortograf%C3%ADa")
l7 = Lesson.new(assignature_id: a4.id,name: "La celula", video:"https://www.youtube.com/embed/hlJCXQaenac", link:"https://es.wikipedia.org/wiki/C%C3%A9lula")
l8 = Lesson.new(assignature_id: a4.id,name: "Sistema Digestivo", video:"https://www.youtube.com/embed/woBW9w2DgHs?list=PLhSt5fhj3_u08mHO1h8k3JYl8KwMulwde", link:"https://es.wikipedia.org/wiki/Aparato_digestivo")
l9 = Lesson.new(assignature_id: a4.id,name: "Sistema Respiratorio", video:"https://www.youtube.com/embed/TSGH-vvT-Qo?list=PLhSt5fhj3_u08mHO1h8k3JYl8KwMulwde" , link:"https://es.wikipedia.org/wiki/Aparato_respiratorio")
l10 = Lesson.new(assignature_id: a5.id,name: "Mov Rectilineo", video:"https://www.youtube.com/embed/bUNmYei82hA?list=PLhSt5fhj3_u27YZxJOrm5Nw5X-PrVzguX" , link:"https://es.wikipedia.org/wiki/Movimiento_rectil%C3%ADneo")
l11 = Lesson.new(assignature_id: a5.id,name: "Fuerza y Movimiento", video:"https://www.youtube.com/embed/AWpcZaFsDpU?list=PLhSt5fhj3_u27YZxJOrm5Nw5X-PrVzguX", link:"https://es.wikipedia.org/wiki/Fuerza#:~:text=En%20f%C3%ADsica%2C%20la%20fuerza%20es,la%20forma%20de%20los%20materiales.")
l12 = Lesson.new(assignature_id: a7.id,name: "Acidos - Base", video:"https://www.youtube.com/embed/vCo9e8ZNUqM", link:"https://es.wikipedia.org/wiki/Base_(qu%C3%ADmica)")
l13 = Lesson.new(assignature_id: a7.id,name: "Quimica Organica", video:"https://www.youtube.com/embed/uzQoaKj-leI", link: "https://es.wikipedia.org/wiki/Qu%C3%ADmica_org%C3%A1nica")
l14 = Lesson.new(assignature_id: a6.id,name: "Los preSocraticos", video:"https://www.youtube.com/embed/XWPDAUn3x3Q?list=PLG35rBQQGtNhX1noleC-fvhK-w-ToJqAL" , link: "https://es.wikipedia.org/wiki/Filosof%C3%ADa_presocr%C3%A1tica#:~:text=La%20filosof%C3%ADa%20presocr%C3%A1tica%20es%20el,sean%20cronol%C3%B3gicamente%20posteriores%20a%20%C3%A9l.")
l15 = Lesson.new(assignature_id: a6.id,name: "Sofistas - Protagoras y Giorgias", video:"https://www.youtube.com/embed/7JgnRsxmJFQ?list=PLG35rBQQGtNhX1noleC-fvhK-w-ToJqAL", link: "https://es.wikipedia.org/wiki/Sofista")
l16 = Lesson.new(assignature_id: a6.id,name: "Imperativo Categorico", video:"https://www.youtube.com/embed/h_6OBJmryhg?list=PLG35rBQQGtNhX1noleC-fvhK-w-ToJqAL", link: "https://es.wikipedia.org/wiki/Imperativo_categ%C3%B3rico#:~:text=El%20imperativo%20categ%C3%B3rico%20es%20un,humano%20en%20todas%20sus%20manifestaciones")


l1.save!
l2.save!
l3.save!
l4.save!
l5.save!
l6.save!
l7.save!
l8.save!
l9.save!
l10.save!
l11.save!
l12.save!
l13.save!
l14.save!
l15.save!
l16.save!





#--- Seed homework de prueba--
h1 = Homework.new(name: " Numeros enteros"  ,content: " Ordenar, en sentido creciente, representar gráficamente, y calcular los opuestos y valores absolutos de los siguientes números enteros: 8, −6, −5, 3, −2, 4, −4, 0, 7", type_off: "homework", answer: "", lesson_id: l1.id)
h2 = Homework.new(name: " Valor absoluto y valor opuesto", content: "Representar gráficamente, y calcular los opuestos y valores absolutos de los siguientes números enteros: −4, 6, −2, 1, −5, 0, 9", type_off: "homework",answer: "", lesson_id: l1.id)
h3 = Homework.new(name:'Factorizar', content: "Sacar factor común en las expresiones:
1- 3 · 2 + 3 · (−5) =  // 2- (−2) · 12 + (−2) · (−6) = // 3- 8 · 5 + 8 = // 4- (−3) · (−2) + (−3) · (−5) = "  ,type_off: "homework", answer: "",  lesson_id: l1.id)
h4 = Homework.new(name:'Aplicacion Derivada', content: " ¿Con qué rapidez baja el nivel del agua contenida en un depósito cilíndrico si estamos vaciándolo a razón de 3000 litros por minuto? ", type_off: "homework",answer: "", lesson_id: l3.id)
h5 = Homework.new(name: 'Velocidad en un punto', content: " Un punto P se mueve sobre la parte de la parábola x D y 2 situada en el primer cuadrante de forma que su coordenada x está aumentando a razón de 5cm/sg. Calcular la velocidad a la que el punto P se aleja del origen cuando x=9", type_off: "homework",answer: "", lesson_id: l3.id)
h6 = Homework.new(name:'Velocidad', content: "Un barco A se desplaza hacia el oeste con una velocidad de 20 millas por hora y otro barco B avanza hacia el norte a 15 millas por hora. Ambos se dirigen hacia un punto O del océano en el cual sus rutas se cruzan. Sabiendo que las distancias iniciales de los barcos A y B al punto O son, respectivamente, de 15 y de 60 millas, se pregunta: ¿A qué velocidad se acercan (o se alejan) los barcos entre sí cuando ha transcurrido una hora? ¿Y cuando han transcurrido 2 horas? ¿En qué momento están más próximos uno de otro?", type_off: "homework", answer: "",  lesson_id: l3.id)
h7 = Homework.new(name:'Imagen de la derivada', content: " Calcular el número de ceros y la imagen de la función f : R  R dada por f(x)=x^6-3x^2+2", type_off: "homework", answer: "", lesson_id: l2.id)
h8 = Homework.new(name:'Justificar ecuacion', content: "Justifica que la ecuación x^2 = x sen x + cos x . Tiene exactamente dos soluciones reales", type_off: "homework", answer: "", lesson_id: l2.id)
h9 = Homework.new(name:'Refutar funciones derivables', content: "Prueba que las únicas funciones n veces derivables con derivada de orden n constante son las funciones polinómicas de grado", type_off: "flashcard", answer: "",  lesson_id: l2.id)
h10 = Homework.new(name:'Tipos de Textos',content: "Escribe una conversación entre un médico y un paciente que llega a su consulta. Para ello, debes tener en cuenta las normas generalmente aceptadas en las conversaciones, así como las expresiones que se suelen utilizar", type_off: "flashcard",answer: "",lesson_id:l4.id)
h11 = Homework.new(name: 'Definición de palabras', content: " Define las siguientes palabras teniendo en cuenta que la palabra definida no puede repetirse en la definición: 1. Silla -  2. Mesa – 3. Armario",type_off: "homework", answer: "", lesson_id:  l4.id)
h12 = Homework.new(name: 'Puntuacion', content: " En el siguiente texto señala con diferentes colores el punto y seguido, el punto y aparte y el punto final. A continuación, explica la diferencia entre cada tipo de punto. Esta es la historia de Pergamino, el hijo del bibliotecario del reino eslavo. Una historia que trata sobre un libro maldito perdido, sobre vanidosas profetisas y tortuosos oráculos, y sobre criaturas y poderes antiguos como la noche. Estas son las aventuras de un niño, el hijo del Cazalibros, al que no le daba miedo viajar en compañía de demonios, ni de brujos, ni de legendarios guerreros condenados a la locura con tal de salvar a su padre. Esta es la historia de Pergamino, un niño que vivía en una biblioteca llena de libros y que un buen día descubrió que no todos los relatos tienen finales felices.", 
type_off: "flashcard", answer: "",  lesson_id:  l6.id)
h13 = Homework.new(name: 'Uso de puntos', content: " Escribe dos puntos o puntos suspensivos cuando sea necesario. a. No he podido olvidar sus palabras «No me gustan las despedidas, pero ». b. A mi abuelo le gustaba coleccionar de todo sellos, libros antiguos, postales de otros países, relojes de curioso diseño c. No sé creo que me dijo que llegaría a las cinco. d. Ya lo sabes, como dice el refrán «A mal tiempo ». e. En la maleta llevo cinco camisetas, dos pantalones, varios calcetines y calzoncillos, una toalla, el neceser.", type_off: "homework", answer: "",  lesson_id:  l6.id)
h14 = Homework.new(name: 'Sustantivos', content: 'Indica si las siguientes afirmaciones son verdaderas o falsa. _ Los sustantivos pueden ir precedidos por un artículo u otro determinativo. _ Los sustantivos no pueden combinarse con otras palabras. _ Los sustantivos pueden desempeñar una función en la oración, solos o en un grupo. _ Los sustantivos siempre desempeñan una función dentro de un grupo. _ Los sustantivos tienen concordancia con los adjetivos que les acompañan, pero no siempre con los artículos. _ La concordancia se da siempre entre los sustantivos y los artículos y adjetivos que les acompañan', type_off: "homework", answer: "",  lesson_id:  l5.id)
h15 = Homework.new(name: 'Ordenar', content: '- Ordena de lo más simple a lo más complejo
a- órgano // b- tejido // c- sistema de órgano // d- célula', type_off: "flashcard", answer: "",  lesson_id:  l7.id)
h16 = Homework.new(name: 'Organismos Procariotes y Eucariotes', content: 'Cite tres ejemplos de organismos con células procariotas y tres organismos con células eucariotas y complete el siguiente cuadro con las principales características de los tipos celulares
Procariotas y Eucariotas', type_off: "flashcard", answer: "",  lesson_id:  l7.id)
h17 = Homework.new(name: 'Dibujar', content: 'Dibujar una célula procariota y una eucariota y citar los componentes', type_off: "homework", answer: "",  lesson_id:  l7.id)
h18 = Homework.new(name: 'Ordenar', content: 'Escribe cada acción en el lugar correspondiente. Masticación / Digestión estomacal / Absorción / Insalivación / Deglución / Digestión intestinal / Formación y expulsión de las heces ', type_off: "homework", answer: "",  lesson_id:  l8.id)
h19 = Homework.new(name: 'Dibuje', content: 'Dibuje el aparato digestivo, sus compoenentes. Tip: Dibujar al menos 9 componentes y nombrarlos ', type_off: "homework", answer: "",  lesson_id:  l8.id)
h20 = Homework.new(name: 'Indique', content: 'Tipos de dients y sus partes', type_off: "flashcard", answer: "",  lesson_id:  l8.id)
h21 = Homework.new(name: 'Proceso de Oxigeacion', content: 'EIndique el proceso de oxigenacion, Importancia ded los alveolos ', type_off: "homework", answer: "",  lesson_id:  l9.id)
h22 = Homework.new(name: 'Importancia del aparato respiratorio', content: 'Indique la importancia del aparato respiratorio, como funciona', type_off: "homework", answer: "",  lesson_id:  l9.id)
h23 = Homework.new(name: 'Indique', content: 'Las partes del aparato respiratorio y su funcion principal', type_off: "homework", answer: "",  lesson_id:  l9.id) 
h24 = Homework.new(name: 'Velocidad', content: '¿A qué velocidad debe circular un auto de carreras para recorrer 50km en un cuarto de hora?', type_off: "homework", answer: "",  lesson_id:  l10.id)
h25 = Homework.new(name: 'Distancia', content: 'Cuántos metros recorre una motocicleta en un segundo si circula a una velocidad de 90km/h', type_off: "homework", answer: "",  lesson_id: l10.id)
h26 = Homework.new(name: 'Tiempo', content: 'La velocidad de la luz en el vacío es, aproximadamente, c=300.000 km/s. ¿Cuánto tarda en llegar la luz del Sol al planeta Tierra si éstos distan unos 149,6 millones de kilómetros?', type_off: "homework", answer: "",  lesson_id:  l10.id) 
h27 = Homework.new(name: 'La fuerza de un cohete', content: '¿Cuál es la aceleración de un cohete que asciende verticalmente por la fuerza de F newtons que le suministra sus reactores?', type_off: "flashcard", answer: "El cuerpo de estudio es un cohete. Las fuerzas que actúan sobre él son su peso y la fuerza del motor que permite elevarlo. En este caso no es necesario descomponer ninguna fuerza para que coincida con la dirección de los ejes del sistema de referencia, ya que todas cumplen esta condición.",  lesson_id:  l11.id)
h28 = Homework.new(name: 'Fuerza normal', content: 'Sabiendo que la fuerza normal de un cuerpo que se encuentra en un plano inclinado de 40º es de 150 N. ¿Cuál es su masa?', type_off: "homework", answer: "",  lesson_id:  l11.id)
h29 = Homework.new(name: 'Un péndulo en tensión', content: 'Una bola metálica de 1 kg de masa se encuentra en reposo colgando del techo de una habitación por medio de una cuerda de 2 m de longitud. Si la masa de la cuerda es despreciable e inextensible. ¿Cuál es el valor de la tensión de la cuerda?', type_off: "homework", answer: "",  lesson_id:  l11.id)
h30= Homework.new(name: 'teoría de Arrhenius y de Brönsted-Lowry', content: '¿Cuál es la diferencia fundamental del concepto de ácido-base según la teoría de Arrhenius y de Brönsted-Lowry?', type_off: "flashcard", answer: "La diferencia se encuentra en que el concepto de Brönsted-Lowry amplía las bases a especies que en la definición de Arrhenius no tiene cabida. ",  lesson_id:  l12.id)
h31= Homework.new(name: ' Reacciones Brönsted-Lowry', content: 'Completa las siguientes reacciones entre pares ácidos y bases de  Brönsted-Lowry: a. NH4 + H2O ↔ ------------- // b. H2O + (CO3) = ↔ ------------- // c. H2O + CH3 – COO-  ↔ ------------', type_off: "flashcard", answer: "a. H3O //  b. OH //  c.  OH ",  lesson_id:  l12.id)
h32= Homework.new(name: 'Acido-Base: V/F', content: 'a- Un ácido es tanto más débil cuanto mayor es el valor de su Ka. b- Siempre que un ácido y una base se mezclan en cantidades estequiométricas, el pH de la disolución resultante es 7, independientemente de que el ácido y la base sean fuertes o débiles. c- El pH de una disolución de NaCl 10-3 M es 7.', type_off: "flashcard", answer: "a- FALSO b- FALSO c. VERDADERO ",  lesson_id:  l12.id)
h33= Homework.new(name: 'Estructura Electronica', content: 'a. Consultando la tabla periódica escriba la estructura electrónica de: a- Li, b-Al, c-P, d-Ar   e indique número de electrones de valencia' , type_off: "flashcard", answer: "a- [He] 2s1   b- [Ne] 3s² 3p¹   c- [Ne] 3s² 3p³   d- [Ne] 3s² 3p⁶",  lesson_id:  l13.id)
h34= Homework.new(name: 'Simbolo quimico', content: 'a. Consultando la tabla periódica indique el simbolo quimico de: a- Argon, b-Fosforo, c-Hierro, d-Hidrogeno   e indique número de electrones de valencia' , type_off: "flashcard", answer:  "a. Ar b. P c. Fe d. H",  lesson_id:  l13.id)
h35= Homework.new(name: 'Tipo', content: 'a. Consultando la tabla periódica indique el numero atomico de: a-Titanio, b-Lantano, c-Tulio, d-Radon   e indique número de electrones de valencia' , type_off: "flashcard", answer: "a. 22 b. 57  c. 69 d. 86",  lesson_id:  l13.id)
h36= Homework.new(name: '1 PreSocrativos V/F', content: 'El tema de la filosofía presocrática fue el tema de la Naturaleza.', type_off: "flashcard", answer: "VERDADERO",  lesson_id:  l14.id)
h37= Homework.new(name: '2 PreSocrativos V/F', content: 'El problema de la naturaleza estudiado por los presocráticos consistió en la investigación de la composición última de la realidad.', type_off: "flashcard", answer: "VERDADERO",  lesson_id:  l14.id)
h38= Homework.new(name: '3 PreSocrativos V/F', content: 'Las explicaciones teleológicas acaban considerando que Dios dirige el curso de la Naturaleza.', type_off: "flashcard", answer: "VERDADERO",  lesson_id:  l14.id)
h39= Homework.new(name: '1 Sofistas V/F', content: 'Los sofistas, en particular los de la segunda generación, consideraron que un principio fundamental que debe regir la vida social es la ley del más fuerte.', type_off: "flashcard", answer: "VERDADERO",  lesson_id:  l15.id)
h40= Homework.new(name: '2 Sofistas V/F', content: 'Los sofistas defendieron el intelectualismo moral.', type_off: "flashcard", answer: "FALSO",  lesson_id:  l15.id)
h41= Homework.new(name: '3 Sofistas V/F', content: 'Para los sofistas el diálogo era la mejor forma de alcanzar la verdad.', type_off: "flashcard", answer: "FALSO",  lesson_id:  l15.id)
h42= Homework.new(name: '1 Imp Categorico / Universalidad', content: 'Soy joven y estoy cómodamente asentado en un medio público de transporte; sube una persona bastante mayor y todos los asientos están ocupados. ¿Le he de ofrecer mi asiento? ¿Qué debo hacer? Universalizo: Siempre que una persona mayor acceda a un medio público y no haya asientos libres, una persona joven le ha de ofrecer el suyo.', type_off: "flashcard", answer: "Universalidad",  lesson_id:  l16.id)
h43= Homework.new(name: '2 Imp Categorico / Universalidad', content: 'Una persona que tiene talento y que puede aportar mucho a la sociedad, contempla la posibilidad de vivir cómodamente y sin esfuerzo. Se pregunta si ha de esforzarse desarrollando sus ventajosas disposiciones naturales o limitarse a disfrutar de la vida. ¿Qué debe hacer? Universaliza: Siempre que se dispone de un buen talento se ha de dejar que se oxidar y dedicarse al ocio y a la diversión.', type_off: "flashcard", answer: "Categorico",  lesson_id:  l16.id)
h44= Homework.new(name: '3 Imp Categorico / Universalidad', content: 'Un Un chico, que tiene costumbres ecológicas haciendo la selección de residuos, constata que bastante gente de su barrio no lo hace, incluso, disponiendo de contenedores. ¿Qué debe hacer? ¿Ha de mantener la costumbre? Universaliza: Si cuando uno o unos no hacen aquello que conviene todos lo dejaran de hacer, nunca conseguiríamos mejoras.', type_off: "flashcard", answer: "Universalidad",  lesson_id:  l16.id)

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
h15.save!
h16.save!
h17.save!
h18.save!
h19.save!
h20.save!
h21.save!
h22.save!
h23.save!
h24.save!
h25.save!
h26.save!
h27.save!
h28.save!
h29.save!
h30.save!
h31.save!
h32.save!
h33.save!
h34.save!
h35.save!
h36.save!
h37.save!
h38.save!
h39.save!
h40.save!
h41.save!
h42.save!
h43.save!
h44.save!


lr1 = UserHomework.new(student_id: user.id, homework_id: h1.id, status: "corregir", created_at: '03/08/2020', updated_at: "04/08/2020")
lr2 = UserHomework.new(student_id: user.id, homework_id: h2.id, status: "corregir", created_at: '03/08/2020', updated_at: "04/08/2020")
lr3 = UserHomework.new(student_id: user.id, homework_id: h3.id, status: "aprobado", created_at: '03/08/2020', updated_at: "04/08/2020")
lr4 = UserHomework.new(student_id: user.id, homework_id: h4.id, status: "aprobado", created_at: '04/08/2020', updated_at: "04/08/2020")
lr5 = UserHomework.new(student_id: user.id, homework_id: h5.id, status: "aprobado", created_at: '02/08/2020', updated_at: "03/08/2020")
lr6 = UserHomework.new(student_id: user.id, homework_id: h6.id, status: "aprobado", created_at: '03/08/2020', updated_at: "04/08/2020")
lr7 = UserHomework.new(student_id: user.id, homework_id: h7.id, status: "pendiente", created_at: '05/08/2020', updated_at: "05/08/2020")
lr8 = UserHomework.new(student_id: user.id, homework_id: h8.id, status: "pendiente", created_at: '06/08/2020', updated_at: "06/08/2020")
lr9 = UserHomework.new(student_id: user.id, homework_id: h9.id, status: "pendiente", created_at: '03/08/2020', updated_at: "03/08/2020")
lr10 = UserHomework.new(student_id: user.id, homework_id: h10.id, status: "aprobado", created_at: '01/08/2020', updated_at: "04/08/2020")
lr11 = UserHomework.new(student_id: user.id, homework_id: h11.id, status: "aprobado", created_at: '02/08/2020', updated_at: "04/08/2020")
lr12 = UserHomework.new(student_id: user.id, homework_id: h12.id, status: "enviado", created_at: '02/08/2020', updated_at: "04/08/2020")
lr13 = UserHomework.new(student_id: user.id, homework_id: h13.id, status: "pendiente", created_at: '02/08/2020', updated_at: "03/08/2020")
lr14 = UserHomework.new(student_id: user.id, homework_id: h14.id, status: "corregir", created_at: '02/08/2020', updated_at: "04/08/2020")
lr15 = UserHomework.new(student_id: user.id, homework_id: h15.id, status: "enviado", created_at: '03/08/2020', updated_at: "04/08/2020")
lr16 = UserHomework.new(student_id: user.id, homework_id: h16.id, status: "enviado", created_at: '04/08/2020', updated_at: "04/08/2020")
lr17 = UserHomework.new(student_id: user.id, homework_id: h17.id, status: "pendiente", created_at: '02/08/2020', updated_at: "03/08/2020")
lr18 = UserHomework.new(student_id: user.id, homework_id: h18.id, status: "corregir", created_at: '04/08/2020', updated_at: "04/08/2020")
lr19 = UserHomework.new(student_id: user.id, homework_id: h19.id, status: "corregir", created_at: '05/08/2020', updated_at: "07/08/2020")
lr20 = UserHomework.new(student_id: user.id, homework_id: h20.id, status: "corregir", created_at: '02/08/2020', updated_at: "09/08/2020")
lr21 = UserHomework.new(student_id: user.id, homework_id: h21.id, status: "pendiente", created_at: '02/08/2020', updated_at: "03/08/2020")
lr22 = UserHomework.new(student_id: user.id, homework_id: h22.id, status: "pendiente", created_at: '02/08/2020', updated_at: "03/08/2020")
lr23 = UserHomework.new(student_id: user.id, homework_id: h23.id, status: "pendiente", created_at: '02/08/2020', updated_at: "03/08/2020")
lr24 = UserHomework.new(student_id: user.id, homework_id: h24.id, status: "aprobado", created_at: '02/08/2020', updated_at: "09/08/2020")
lr25 = UserHomework.new(student_id: user.id, homework_id: h25.id, status: "corregir", created_at: '02/08/2020', updated_at: "10/08/2020")
lr26 = UserHomework.new(student_id: user.id, homework_id: h26.id, status: "corregir", created_at: '08/08/2020', updated_at: "09/08/2020")
lr27 = UserHomework.new(student_id: user.id, homework_id: h27.id, status: "enviado", created_at: '04/08/2020', updated_at: "04/08/2020")
lr28 = UserHomework.new(student_id: user.id, homework_id: h28.id, status: "enviado", created_at: '04/08/2020', updated_at: "04/08/2020")
lr29 = UserHomework.new(student_id: user.id, homework_id: h29.id, status: "enviado", created_at: '04/08/2020', updated_at: "10/08/2020")
lr30 = UserHomework.new(student_id: user.id, homework_id: h30.id, status: "pendiente", created_at: '04/08/2020', updated_at: "04/08/2020")
lr31 = UserHomework.new(student_id: user.id, homework_id: h32.id, status: "pendiente", created_at: '04/08/2020', updated_at: "04/08/2020")
lr32 = UserHomework.new(student_id: user.id, homework_id: h33.id, status: "pendiente", created_at: '04/08/2020', updated_at: "04/08/2020")
lr33 = UserHomework.new(student_id: user.id, homework_id: h33.id, status: "pendiente", created_at: '05/08/2020', updated_at: "05/08/2020")
lr34 = UserHomework.new(student_id: user.id, homework_id: h34.id, status: "pendiente", created_at: '05/08/2020', updated_at: "05/08/2020")
lr35 = UserHomework.new(student_id: user.id, homework_id: h35.id, status: "pendiente", created_at: '05/08/2020', updated_at: "05/08/2020")
lr36 = UserHomework.new(student_id: user.id, homework_id: h36.id, status: "pendiente", created_at: '05/08/2020', updated_at: "05/08/2020")
lr37 = UserHomework.new(student_id: user.id, homework_id: h37.id, status: "pendiente", created_at: '06/08/2020', updated_at: "06/08/2020")
lr38 = UserHomework.new(student_id: user.id, homework_id: h38.id, status: "pendiente", created_at: '06/08/2020', updated_at: "06/08/2020")
lr39 = UserHomework.new(student_id: user.id, homework_id: h39.id, status: "pendiente", created_at: '06/08/2020', updated_at: "06/08/2020")
lr40 = UserHomework.new(student_id: user.id, homework_id: h40.id, status: "pendiente", created_at: '06/08/2020', updated_at: "06/08/2020")
lr41 = UserHomework.new(student_id: user.id, homework_id: h41.id, status: "pendiente", created_at: '06/08/2020', updated_at: "06/08/2020")
lr42 = UserHomework.new(student_id: user.id, homework_id: h42.id, status: "pendiente", created_at: '06/08/2020', updated_at: "06/08/2020")
lr43 = UserHomework.new(student_id: user.id, homework_id: h43.id, status: "pendiente", created_at: '06/08/2020', updated_at: "06/08/2020")
lr44 = UserHomework.new(student_id: user.id, homework_id: h44.id, status: "pendiente", created_at: '06/08/2020', updated_at: "06/08/2020")



lr1.save!
lr2.save!
lr3.save!
lr4.save!
lr5.save!
lr6.save!
lr7.save!
lr8.save!
lr9.save!
lr10.save!
lr11.save!
lr12.save!
lr13.save!
lr14.save!
lr15.save!
lr16.save!
lr17.save!
lr18.save!
lr19.save!
lr20.save!
lr21.save!
lr22.save!
lr23.save!
lr24.save!
lr25.save!
lr26.save!
lr27.save!
lr28.save!
lr29.save!

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
