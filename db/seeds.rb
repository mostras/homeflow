

puts "ceci marque le debut des seeds.."

puts "empezamos la desrucion de las seedas"

Document.destroy_all
Job.destroy_all
User.destroy_all

puts "---------- ça créer du USERS"

robert = User.new(first_name: 'Robert', last_name: 'Charpentier', company_name: 'Lyon Construction', phone_number: '06 79 09 38 18', email: 'rcharpentier@lyonconstruction.com', password: 'robertlyon')
robert.photo.attach(io: open('seed_images/avatar/iddidier.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
robert.save!
puts "--- votre constructor Robert a bien été créé!!!!"



romain = User.new(constructor: robert, first_name: 'Romain', last_name: 'Mostras', phone_number: '06 34 52 39 12', address_street: '34 rue Pasteur', address_zip: 69300, address_city: 'Caluire-et-Cuire', email: 'romainmostras@icloud.com', password: 'romainm')
romain.photo.attach(io: open('seed_images/avatar/m1.jpg'), filename: 'avatar3.jpg', content_type: 'image/jpg')
romain.save!
puts "#{romain.first_name} a été créé !!!!!!!!"


client2 = User.new(constructor: robert, first_name: 'Richard', last_name: 'Dassault', phone_number: '06 79 09 38 18', address_street: '1 place de la Comédie', address_zip: 69001, address_city: 'Lyon', email: 'Richard@gmail.com', password: 'ytreza')
client2.photo.attach(io: open('seed_images/avatar/m1.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client2.save!
puts "#{client2.first_name} a été créé !!!!!!!!"

client3 = User.new(constructor: robert, first_name: 'Kelly', last_name: 'Diotte', phone_number: '06 79 09 38 18', address_street: '31 cours de la Liberté', address_zip: 69003, address_city: 'Lyon', email: 'Kelly@gmail.com', password: 'ytreza')
client3.photo.attach(io: open('seed_images/avatar/w1.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client3.save!
puts "#{client3.first_name} a été créé !!!!!!!!"

client4 = User.new(constructor: robert, first_name: 'Paul', last_name: 'Ochon', phone_number: '06 79 09 38 18', address_street: '44 rue Commandant Charcot', address_zip: 69005, address_city: 'Lyon', email: 'Paul@gmail.com', password: 'ytreza')
client4.photo.attach(io: open('seed_images/avatar/m2.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client4.save!
puts "#{client4.first_name} a été créé !!!!!!!!"

client5 = User.new(constructor: robert, first_name: 'Odile', last_name: 'Hatmoilarate', phone_number: '06 79 09 38 18', address_street: '291 cours Emile Zola', address_zip: 69100, address_city: 'Villeurbane', email: 'Odile@gmail.com', password: 'ytreza')
client5.photo.attach(io: open('seed_images/avatar/w2.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client5.save!
puts "#{client5.first_name} a été créé !!!!!!!!"

client6 = User.new(constructor: robert, first_name: 'Paul', last_name: 'Chtron', phone_number: '06 79 09 38 18', address_street: '26 avenue des Sports', address_zip: 69500, address_city: 'Bron', email: 'Paul2@gmail.com', password: 'ytreza')
client6.photo.attach(io: open('seed_images/avatar/m3.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client6.save!
puts "#{client6.first_name} a été créé !!!!!!!!"

client7 = User.new(constructor: robert, first_name: 'Andy', last_name: 'Capé', phone_number: '06 79 09 38 18', address_street: '28 rue Général de Gaulle', address_zip: 69530, address_city: 'Brignais', email: 'Andy@gmail.com', password: 'ytreza')
client7.photo.attach(io: open('seed_images/avatar/m4.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client7.save!
puts "#{client7.first_name} a été créé !!!!!!!!"

client8 = User.new(constructor: robert, first_name: 'Andréa', last_name: 'Martel', phone_number: '06 79 09 38 18', address_street: '15 rue de Taillepied', address_zip: 69540, address_city: 'Irigny', email: 'Andréa@gmail.com', password: 'ytreza')
client8.photo.attach(io: open('seed_images/avatar/w3.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client8.save!
puts "#{client8.first_name} a été créé !!!!!!!!"

client9 = User.new(constructor: robert, first_name: 'Guillaume', last_name: 'Debailly', phone_number: '06 79 09 38 18', address_street: 'Rue de Boutan', address_zip: 69540, address_city: 'Irigny', email: 'Guillaume@gmail.com', password: 'ytreza')
client9.photo.attach(io: open('seed_images/avatar/m5.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client9.save!
puts "#{client9.first_name} a été créé !!!!!!!!"

client10 = User.new(constructor: robert, first_name: 'Sacha', last_name: 'De Bourg-Palette', phone_number: '06 79 09 38 18', address_street: '546 route de Saint-Abdon', address_zip: 69390, address_city: 'Charly', email: 'Sacha@gmail.com', password: 'ytreza')
client10.photo.attach(io: open('seed_images/avatar/m6.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client10.save!
puts "#{client10.first_name} a été créé !!!!!!!!"

client11 = User.new(constructor: robert, first_name: 'Aude', last_name: 'Javel', phone_number: '06 79 09 38 18', address_street: 'Place Jean Jourès', address_zip: 69310, address_city: 'Pierre-Bénite', email: 'Aude@gmail.com', password: 'ytreza')
client11.photo.attach(io: open('seed_images/avatar/w4.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client11.save!
puts "#{client11.first_name} a été créé !!!!!!!!"

client12 = User.new(constructor: robert, first_name: 'Beth', last_name: 'Rave', phone_number: '06 10 35 56 30', address_street: "20 boulevard de L'Yzeron", address_zip: 69600, address_city: 'Oullins', email: 'Beth@gmail.com', password: 'ytreza')
client12.photo.attach(io: open('seed_images/avatar/w5.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client12.save!
puts "#{client12.first_name} a été créé !!!!!!!!"

client13 = User.new(constructor: robert, first_name: 'Candy', last_name: 'Tu', phone_number: '06 10 35 56 30', address_street: 'Rue Sainte-Barbe', address_zip: 69110, address_city: 'Sainte-Foy-lès-Lyon', email: 'Candy@gmail.com', password: 'ytreza')
client13.photo.attach(io: open('seed_images/avatar/w6.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client13.save!
puts "#{client13.first_name} a été créé !!!!!!!!"

client14 = User.new(constructor: robert, first_name: 'Clair', last_name: 'Hyère', phone_number: '06 10 35 56 30', address_street: '78 Avenue Charles de Gaulle', address_zip: 69160, address_city: 'Tassin-la-demi-Lune', email: 'Clair@gmail.com', password: 'ytreza')
client14.photo.attach(io: open('seed_images/avatar/w7.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client14.save!
puts "#{client14.first_name} a été créé !!!!!!!!"

client15 = User.new(constructor: robert, first_name: 'Clint', last_name: 'Horis', phone_number: '06 10 35 56 30', address_street: '4 allée des Tullistes', address_zip: 69130, address_city: 'Ecully', email: 'Clint@gmail.com', password: 'ytreza')
client15.photo.attach(io: open('seed_images/avatar/m7.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client15.save!
puts "#{client15.first_name} a été créé !!!!!!!!"

client16 = User.new(constructor: robert, first_name: 'Jamal', last_name: 'Alatête', phone_number: '06 10 35 56 30', address_street: '1 allée Claude Debussy F', address_zip: 69130, address_city: 'Ecully', email: 'Jamal@gmail.com', password: 'ytreza')
client16.photo.attach(io: open('seed_images/avatar/m1.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client16.save!
puts "#{client16.first_name} a été créé !!!!!!!!"

client17 = User.new(constructor: robert, first_name: 'Garcin', last_name: 'Lazard', phone_number: '06 10 35 56 30', address_street: '38 rue François Peissel', address_zip: 69300, address_city: 'Caluire-et-Cuire', email: 'Garcin@gmail.com', password: 'ytreza')
client17.photo.attach(io: open('seed_images/avatar/m8.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client17.save!
puts "#{client17.first_name} a été créé !!!!!!!!"

client18 = User.new(constructor: robert, first_name: 'Gille', last_name: 'De Sauvetage', phone_number: '06 10 35 56 30', address_street: '102 rue des Mercières', address_zip: 69140, address_city: 'Rillieux-la-pape', email: 'Gille@gmail.com', password: 'ytreza')
client18.photo.attach(io: open('seed_images/avatar/m9.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client18.save!
puts "#{client18.first_name} a été créé !!!!!!!!"

client19 = User.new(constructor: robert, first_name: 'Guy', last_name: 'Tar', phone_number: '06 10 35 56 30', address_street: '29 rue Francine Fromont', address_zip: 69120, address_city: 'Vaulx-en-Velin', email: 'Guy@gmail.com', password: 'ytreza')
client19.photo.attach(io: open('seed_images/avatar/m10.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client19.save!
puts "#{client19.first_name} a été créé !!!!!!!!"

client20 = User.new(constructor: robert, first_name: 'Ivan', last_name: 'Desnugets', phone_number: '06 10 35 56 30', address_street: "Place de l'Europe", address_zip: 69330, address_city: 'Meyzieu', email: 'Ivan@gmail.com', password: 'ytreza')
client20.photo.attach(io: open('seed_images/avatar/m11.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client20.save!
puts "#{client20.first_name} a été créé !!!!!!!!"

client21 = User.new(constructor: robert, first_name: 'Adrien', last_name: 'Barbier', phone_number: '06 79 09 38 18', address_street: '1 place de la Comédie', address_zip: 69001, address_city: 'Lyon', email: 'adrien-barbier@hotmail.fr', password: 'azerty')
client21.photo.attach(io: open('seed_images/avatar/m12.jpg'), filename: 'avatar.jpg', content_type: 'image/jpg')
client21.save!
puts "#{client21.first_name} a été créé !!!!!!!!"

clients = [romain, client2, client3, client4, client5, client6, client7, client8, client9, client10, client11,  client12, client13, client14, client15, client16, client17, client18, client19, client20, client21]



puts "---------- ça créer du DOCUMENT"

document = Document.new(title: 'Assurance emprunteur', category: "Assurance", user: romain)
document.photo.attach(io: open('seed_images/documents/assurance emprunteur.png'), filename: 'document.png', content_type: 'image/png')
document.save!

document = Document.new(title: 'CCMI', category: "Contrats", user: romain)
document.photo.attach(io: open('seed_images/documents/CCMI.jpeg'), filename: 'document.jpeg', content_type: 'image/jpeg')
document.save!

document = Document.new(title: 'Acte Notaire', category: "Notaire", user: romain)
document.photo.attach(io: open('seed_images/documents/notaire_acte.jpg'), filename: 'document.jpg', content_type: 'image/jpg')
document.save!

document = Document.new(title: 'Permis Contruire', category: "Urbanisme", user: romain)
document.photo.attach(io: open('seed_images/documents/permis_de_contruire.png'), filename: 'document.png', content_type: 'image/png')
document.save!

document = Document.new(title: 'Plans Maison', category: "Plans", user: romain)
document.photo.attach(io: open('seed_images/documents/plans_maison.jpg'), filename: 'document.jpg', content_type: 'image/jpg')
document.save!

document = Document.new(title: 'Consuel', category: "Urbanisme", user: romain)
document.photo.attach(io: open('seed_images/documents/consuel.png'), filename: 'document.png', content_type: 'image/png')
document.save!

document = Document.new(title: 'Plan Situation', category: "Plans", user: romain)
document.photo.attach(io: open('seed_images/documents/plan_situation.png'), filename: 'document.png', content_type: 'image/png')
document.save!

document = Document.new(title: 'Recepisse Permis', category: "Urbanisme", user: romain)
document.photo.attach(io: open('seed_images/documents/recepisse_permis.jpg'), filename: 'document.jpg', content_type: 'image/jpg')
document.save!

document = Document.new(title: 'Certificat Urbanisme', category: "Urbanisme", user: romain)
document.photo.attach(io: open('seed_images/documents/certificat_urbanisme.jpg'), filename: 'document.jpg', content_type: 'image/jpg')
document.save!

document = Document.new(title: 'Ouverture Chantier', category: "Urbanisme", user: romain)
document.photo.attach(io: open('seed_images/documents/ouverture_chantier.jpg'), filename: 'document.jpg', content_type: 'image/jpg')
document.save!

document = Document.new(title: 'Ouverture EDF', category: "Contrats", user: romain)
document.photo.attach(io: open('seed_images/documents/ouverture_edf.jpg'), filename: 'document.jpg', content_type: 'image/jpg')
document.save!

document = Document.new(title: 'Ouverture eau', category: "Contrats", user: romain)
document.photo.attach(io: open('seed_images/documents/ouverture_eau.png'), filename: 'document.png', content_type: 'image/png')
document.save!

document = Document.new(title: 'Contrat gaz', category: "Contrats", user: romain)
document.photo.attach(io: open('seed_images/documents/contrat_gaz.jpg'), filename: 'document.jpg', content_type: 'image/jpg')
document.save!



puts "---------- ça créer du TUTORIELS"
Tutorial.create!(title:"Les fondations d'une maison", description:"Nous vous présentons la mise en oeuvre des fondations d'une maison, des armatures de fondations, du béton armé, de l'étude de sol, du sol porteur, des armatures de liaison, des semelles fillantes, des linteaux, des poutres, des chainages d'armatures, des chevetres.", url:"www.youtube.com/watch?v=_A6qbihsbyY#t=0m23s")
Tutorial.create!(title:"Fenetres et portes", description:"Quels matériaux utiliser pour quelle performance énergétique ? Cette vidéo vous montre comment est réalisé l'étanchéité des huisseries.", url:"www.youtube.com/watch?v=rRpCZiFjZl0#t=0m23s")
Tutorial.create!(title:"Toiture et isolation d'un toit", description:"Nous vous présentons la mise en place, de l'isolation de la toiture, des pare vapeur, des écrans de sous toiture, des tuiles minérales, de la couverture du toit, du faitage, de noues, étanchéité, l'imperméabilité, sur la charpente, les linteaux, pour maison neuve ou rénovation.", url:"www.youtube.com/watch?v=eeWZpNlgD5g#t=0m23s")
Tutorial.create!(title:"L'assurance Dommages Ouvrage", description:"Nous vous présentons les avantages de souscrire à une assurance dommages ouvrage avant la construction de votre maison individuelle pour vous couvrir des sinistres que pourra rencontrer votre habitation.", url:"www.youtube.com/watch?v=6HMkny_SA_E#t=0m23s")
Tutorial.create!(title:"Avantage d'une VMC double flux", description:"Nous vous présentons les avantages et le fonctionnement de la ventilation simple flux, simple flux avec pompe à chaleur et double flux.", url:"www.youtube.com/watch?v=fDPzplguoyk#t=0m23s")
Tutorial.create!(title:"Chauffage et eau chaude", description:"Nous vous présentons l'installation de différents type de chauffage, chauffe-eau et radiateur adapté à la maison neuve, respectant la RT2012.", url:"www.youtube.com/watch?v=KuSKdDKQCQU#t=0m23s")
Tutorial.create!(title:"Etanchéité à l'air et étude thermique", description:"Vous devez impérativement disposer d'un certificat certifiant que votre maison est aux normes RT 2012. Pour ce faire, nous faisons intervenir un spécialiste. Nous vous explquons ici les étapes de la certification.", url:"www.youtube.com/watch?v=LI-mgWrLtPU#t=0m23s")


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
