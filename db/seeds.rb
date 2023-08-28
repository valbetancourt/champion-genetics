require "open-uri"
Horse.destroy_all
User.destroy_all

#######################################   USERS     #########################################################
puts "creando usuario 1"
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1689560078/lmywiilsiprsptawr2wl.jpg")
user1 = User.new(email: "juan@gmail.com", password: "123456")
user1.photo.attach(io: file, filename: "juan.jpg", content_type: "image/jpg")
user1.save!

puts "creando usuario 2"
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1689605663/j1xwmqtjj5i9ibi6ric9.jpg")
user2 = User.new(email: "valeria@gmail.com", password: "123456")
user2.photo.attach(io: file, filename: "valeria.jpg", content_type: "image/jpg")
user2.save!

#######################################   HORSES     #########################################################
puts "creando caballo 1"
file = URI.open("https://www.equusstallions.com/wp-content/uploads/2019/01/Sin-t%C3%ADtulo-3-1024x879.png")
horse1 = Horse.new(category: "showjumper", breed: "holsteiner" , height: "16.3", pedigree: "(BALOUBET DU ROUET x GEORGIA)", accomplishments: "Olympic gold medal", price: "2,000", user: user1)
horse1.photo.attach(io: file, filename: "balou_du_rouet.jpg", content_type: "image/jpg")
horse1.save!

puts "creando caballo 2"
file = URI.open("https://www.holger-hetzel.com/sites/default/files/styles/teaser_large_no_crop/public/Next%20Level%20S.JPG?itok=F9sOacm4")
horse2 = Horse.new(category: "showjumper", breed: "holsteiner", height: "16.3", pedigree: "(CAPITOL I x KERRIN)", accomplishments: "bla bla", price: "3,100", user: user1)
horse2.photo.attach(io: file, filename: "carthago_z.jpg", content_type: "image/jpg")
horse2.save!
puts "creando caballo 3"
file = URI.open("https://cdn.bloodhorse.com/sroimages//medium/0000130614_1.jpg")
horse3 = Horse.new(category: "Race Horse", breed: "thoroughbred", height: "16.1", pedigree: "(HARLAN'S HOLIDAY x LESLIE'S LADY)", accomplishments: "bla bla", price: "250,000", user: user1)
horse3.photo.attach(io: file, filename: "into_mischief.jpg", content_type: "image/jpg")
horse3.save!
puts "creando caballo 4"
file = URI.open("https://upload.wikimedia.org/wikipedia/en/d/df/Secretariat_at_stud.jpg")
horse4 = Horse.new(category: "Race Horse", breed: "thoroughbred", height: "16.2", pedigree: "(BOLD RULER x SOMETHINGROYAL)", accomplishments: "bla bla", price: "125,000", user: user2)
horse4.photo.attach(io: file, filename: "secretariat.jpg", content_type: "image/jpg")
horse4.save!
puts "creando caballo 5"
file = URI.open("https://www.qstallions.com/img/145/vs%20code%20red-5321%208x10.jpg")
horse5 = Horse.new(category: "western", breed: "quarter horse", height: "15.3", pedigree: "(BLAZING HOT x VITAL SIGNS ARE GOOD)", accomplishments: "bla bla", price: "5,000", user: user2)
horse5.photo.attach(io: file, filename: "VS_Code_Red.jpg", content_type: "image/jpg")
horse5.save!
puts "creando caballo 6"
file = URI.open("https://www.riversideranch.com/img/mm_image5.jpg")
horse6 = Horse.new(category: "western", breed: "quarter horse", height: "15.1", pedigree: "(A GOOD MACHINE x GYPSYS LITTLE IMAGE)", accomplishments: "bla bla", price: "5,000", user: user2)
horse6.photo.attach(io: file, filename: "machine_made.jpg", content_type: "image/jpg")
horse6.save!
puts "Finalizado !!!"
