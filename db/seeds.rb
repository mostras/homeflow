

puts "ceci marque le debut des seeds.."

puts "empezamos la desrucion de las seedas"

Document.destroy_all
Job.destroy_all
User.destroy_all

puts "---------- ça créer du USERS"

robert = User.new(first_name: 'Robert', last_name: 'Charpentier', company_name: 'Lyon Construction', phone_number: '06 79 09 38 18', email: 'rcharpentier@lyonconstruction.com', password: 'robertlyon')
robert.photo.attach(io: open('seed_images/avatar.png'), filename: 'avatar.png', content_type: 'image/png')
robert.save!



client1 = User.new(constructor: robert, first_name: 'Romain', last_name: 'Mostras', phone_number: '06 34 52 39 12', address_street: '34 rue Pasteur', address_zip: 69300, address_city: 'Caluire-et-Cuire', email: 'romainmostras@icloud.com', password: 'romainm')
client1.photo.attach(io: open('seed_images/avatar3.png'), filename: 'avatar3.png', content_type: 'image/png')
client1.save!

client2 = User.new(constructor: robert, first_name: 'Richard', last_name: 'Dassault', phone_number: '06 79 09 38 18', address_street: '1 place de la Comédie', address_zip: 69001, address_city: 'Lyon', email: 'Richard@gmail.com', password: 'ytreza')
client2.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client2.save!

client3 = User.new(constructor: robert, first_name: 'Kelly', last_name: 'Diotte', phone_number: '06 79 09 38 18', address_street: '31 cours de la Liberté', address_zip: 69003, address_city: 'Lyon', email: 'Kelly@gmail.com', password: 'ytreza')
client3.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client3.save!

client4 = User.new(constructor: robert, first_name: 'Paul', last_name: 'Ochon', phone_number: '06 79 09 38 18', address_street: '44 rue Commandant Charcot', address_zip: 69005, address_city: 'Lyon', email: 'Paul@gmail.com', password: 'ytreza')
client4.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client4.save!

client5 = User.new(constructor: robert, first_name: 'Odile', last_name: 'Hatmoilarate', phone_number: '06 79 09 38 18', address_street: '291 cours Emile Zola', address_zip: 69100, address_city: 'Villeurbane', email: 'Odile@gmail.com', password: 'ytreza')
client5.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client5.save!

client6 = User.new(constructor: robert, first_name: 'Paul', last_name: 'Chtron', phone_number: '06 79 09 38 18', address_street: '26 avenue des Sports', address_zip: 69500, address_city: 'Bron', email: 'Paul@gmail.com', password: 'ytreza')
client6.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client6.save!

client7 = User.new(constructor: robert, first_name: 'Andy', last_name: 'Capé', phone_number: '06 79 09 38 18', address_street: '28 rue Général de Gaulle', address_zip: 69530, address_city: 'Brignais', email: 'Andy@gmail.com', password: 'ytreza')
client7.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client7.save!

client8 = User.new(constructor: robert, first_name: 'Andréa', last_name: 'Martel', phone_number: '06 79 09 38 18', address_street: '15 rue de Taillepied', address_zip: 69540, address_city: 'Irigny', email: 'Andréa@gmail.com', password: 'ytreza')
client8.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client8.save!

client9 = User.new(constructor: robert, first_name: 'Guillaume', last_name: 'Debailly', phone_number: '06 79 09 38 18', address_street: 'Rue de Boutan', address_zip: 69540, address_city: 'Irigny', email: 'Guillaume@gmail.com', password: 'ytreza')
client9.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client9.save!

client10 = User.new(constructor: robert, first_name: 'Sacha', last_name: 'De Bourg-Palette', phone_number: '06 79 09 38 18', address_street: '546 route de Saint-Abdon', address_zip: 69390, address_city: 'Charly', email: 'Sacha@gmail.com', password: 'ytreza')
client10.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client10.save!

client11 = User.new(constructor: robert, first_name: 'Aude', last_name: 'Javel', phone_number: '06 79 09 38 18', address_street: 'Place Jean Jourès', address_zip: 69310, address_city: 'Pierre-Bénite', email: 'Aude@gmail.com', password: 'ytreza')
client11.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client11.save!

client12 = User.new(constructor: robert, first_name: 'Beth', last_name: 'Rave', phone_number: '06 10 35 56 30', address_street: "20 boulevard de L'Yzeron", address_zip: 69600, address_city: 'Oullins', email: 'Beth@gmail.com', password: 'ytreza')
client12.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client12.save!

client13 = User.new(constructor: robert, first_name: 'Candy', last_name: 'Tu', phone_number: '06 10 35 56 30', address_street: 'Rue Sainte-Barbe', address_zip: 69110, address_city: 'Sainte-Foy-lès-Lyon', email: 'Candy@gmail.com', password: 'ytreza')
client13.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client13.save!

client14 = User.new(constructor: robert, first_name: 'Clair', last_name: 'Hyère', phone_number: '06 10 35 56 30', address_street: '78 Avenue Charles de Gaulle', address_zip: 69160, address_city: 'Tassin-la-demi-Lune', email: 'Clair@gmail.com', password: 'ytreza')
client14.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client14.save!

client15 = User.new(constructor: robert, first_name: 'Clint', last_name: 'Horis', phone_number: '06 10 35 56 30', address_street: '4 allée des Tullistes', address_zip: 69130, address_city: 'Ecully', email: 'Clint@gmail.com', password: 'ytreza')
client15.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client15.save!

client16 = User.new(constructor: robert, first_name: 'Jamal', last_name: 'Alatête', phone_number: '06 10 35 56 30', address_street: '1 allée Claude Debussy F', address_zip: 69130, address_city: 'Ecully', email: 'Jamal@gmail.com', password: 'ytreza')
client16.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client16.save!

client17 = User.new(constructor: robert, first_name: 'Garcin', last_name: 'Lazard', phone_number: '06 10 35 56 30', address_street: '38 rue François Peissel', address_zip: 69300, address_city: 'Caluire-et-Cuire', email: 'Garcin@gmail.com', password: 'ytreza')
client17.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client17.save!

client18 = User.new(constructor: robert, first_name: 'Gille', last_name: 'De Sauvetage', phone_number: '06 10 35 56 30', address_street: '102 rue des Mercières', address_zip: 69140, address_city: 'Rillieux-la-pape', email: 'Gille@gmail.com', password: 'ytreza')
client18.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client18.save!

client19 = User.new(constructor: robert, first_name: 'Guy', last_name: 'Tar', phone_number: '06 10 35 56 30', address_street: '29 rue Francine Fromont', address_zip: 69120, address_city: 'Vaulx-en-Velin', email: 'Guy@gmail.com', password: 'ytreza')
client19.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client19.save!

client20 = User.new(constructor: robert, first_name: 'Ivan', last_name: 'Desnugets', phone_number: '06 10 35 56 30', address_street: "Place de l'Europe", address_zip: 69330, address_city: 'Meyzieu', email: 'Ivan@gmail.com', password: 'ytreza')
client20.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client20.save!

client21 = User.new(constructor: robert, first_name: 'Adrien', last_name: 'Barbier', phone_number: '06 79 09 38 18', address_street: '1 place de la Comédie', address_zip: 69001, address_city: 'Lyon', email: 'adrien-barbier@hotmail.fr', password: 'azerty')
client21.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client21.save!

clients = [client1, client2, client3, client4, client5, client6, client7, client8, client9, client10, client11,  client12, client13, client14, client15, client16, client17, client18, client19, client20, client21]

puts "---------- ça créer du DOCUMENT"

  document1 = Document.new(title: 'Devis Peinture', category: "Contrats", user: client)
  document1.photo.attach(io: open('seed_images/devis1.jpg'), filename: 'devis1.jpg', content_type: 'image/jpg')
  document1.save!
  document2 = Document.new(title: 'Plan au sol', category: "Plans", user: client)
  document2.photo.attach(io: open('seed_images/devis2.jpg'), filename: 'devis2.jpg', content_type: 'image/jpg')
  document2.save!


clients.each do |client|
  puts "---------- ça créer ses JOBS pour #{client.first_name}"

  jobs = ['Préparation Terrain', 'Fondations', 'Murs & étages', 'Toiture', 'Aménagement', 'Revêtement', 'Isolation', 'Menuiserie', 'Plomberie', 'Electicite', 'Extérieur', 'Finissions'].reverse

  jobs.each do |job|
    var = Job.create!(name: job, user: client)
    puts "#{var.name} a été créé !!!!!"

  end
end

puts "==============================="
puts "Et c'est ainsi que les seeds se terminent."
