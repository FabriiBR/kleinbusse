
 #--- Seed alumno de prueba----
 user = User.new(
   email: 'alum@alum.com', 
   first_name: Faker::Name.first_name, 
   last_name: Faker::Name.last_name, 
   role: false, 
   institute : 'Cardenal Newman',
   password: '123456',
   birthday: Faker::Date.birthday(min_age: 14, max_age: 16),
   available: true   
  )
 avatar_url = 'https://i.pravatar.cc/300'
 avatar = URI.open(avatar_url)
 
 user.photo.attach(io: avatar, filename: "#{user.first_name}#{user.last_name}", content_type: 'image/jpg')
 user.save!
 
 #--- Seed profe de prueba----
 profe = User.new(
  email: 'profe@profe.com', 
  first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name, 
  role: true, 
  institute : 'Cardenal Newman',
  password: '123456',
  birthday: Faker::Date.birthday(min_age: 30, max_age: 45),
  available: true  
  )
 avatar_url2 = 'https://i.pravatar.cc/300'
 avatar2 = URI.open(avatar_url2)
 
 profe.photo.attach(io: avatar2, filename: "#{profe.first_name}#{profe.last_name}", content_type: 'image/jpg')
 profe.save!
 
 7.times do
   p_users = User.new(
     email: Faker::Internet.email, 
     professional: true, first_name: 
     Faker::Name.first_name, 
     last_name: Faker::Name.last_name, 
     address: Faker::Address.street_address, 
     cel_phone: Faker::PhoneNumber.cell_phone_in_e164, 
     dni: Faker::Number.number(digits: 8), 
     password: '123456'
     
     email: 'alum@alum.com', 
     first_name: Faker::Name.first_name, 
     last_name: Faker::Name.last_name, 
     role: false, 
     institute : 'Cardenal Newman',
     password: '123456',
     birthday: Faker::Date.birthday(min_age: 14, max_age: 16),
     available: true   
     )
   #--- avatar----
   avatar_url = 'https://i.pravatar.cc/300'
   avatar = URI.open(avatar_url)
   p_users.photo.attach(io: avatar, filename: "#{p_users.first_name}#{p_users.last_name}", content_type: 'image/jpg')
   #---- avatar ----
   p_users.save!
   profile = Profile.find_by user_id: p_users.id
   profile.update(school: SCHOOLS.sample, license_number:  Faker::Number.number(digits: 6), speciality: SPECIALITY.sample, price: 600)
   
   p p_users
   p profile
 end
 10.times do
   c_users = User.new(email: Faker::Internet.email, professional: false, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, cel_phone: Faker::PhoneNumber.cell_phone_in_e164, dni: Faker::Number.number(digits: 8), password: '123456')
   c_users.save!
   p c_users
 end
 22.times do
   appointment = Appointment.new(appointment_date: Faker::Date.in_date_period, start_hour: 18, status: "Pendiente de confirmar", session_price: 600)
   appointment.client_id = User.where(professional: false).sample.id # ver
   appointment.professional_id = User.where(professional: true).sample.id
   appointment.save!
 end
 25.times do 
   review = Review.new(rating_sharp: [1,2,3,4,5].sample, rating_facilities: [1,2,3,4,5].sample, rating_qualityprice: [1,2,3,4,5].sample)
   review.appointment_id = Appointment.all.sample.id
   review.save!
 end
 