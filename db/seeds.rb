

puts "ceci marque le debut des seeds.."

puts "empezamos la desrucion de las seedas"

Document.destroy_all
Job.destroy_all
User.destroy_all

puts "---------- ça créer du USERS"

robert = User.new(first_name: 'Robert', last_name: 'Chantier', company_name: 'RhoneKonst', phone_number: '06 79 09 38 18', email: 'robert@gmail.com', password: 'azerty')
robert.photo.attach(io: open('seed_images/avatar.png'), filename: 'avatar.png', content_type: 'image/png')
robert.save!

client1 = User.new(constructor: robert, first_name: 'Romain', last_name: 'Mostras', phone_number: '06 34 52 39 11', address_street: '5 rue Rosset', address_zip: 69004, address_city: 'Lyon', email: 'romainmostras@icloud.com', password: 'azerty')
client1.photo.attach(io: open('seed_images/avatar3.png'), filename: 'avatar3.png', content_type: 'image/png')
client1.save!

client2 = User.new(constructor: robert, first_name: 'Adrien', last_name: 'Barbier', phone_number: '06 79 09 38 18', address_street: '127 rue de Vendôme', address_zip: 69006, address_city: 'Lyon', email: 'adrien-barbier@hotmail.fr', password: 'azerty')
client2.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client2.save!

client3 = User.new(constructor: robert, first_name: 'Didier', last_name: 'Jondet', phone_number: '06 10 35 56 30', address_street: '130 Rue Vauban', address_zip: 69006, address_city: 'Lyon', email: 'djondet@gmail.com', password: 'azerty')
client3.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client3.save!

clients = [client1, client2, client3]

puts "---------- ça créer du DOCUMENT"

clients.each do |client|

  document1 = Document.new(title: 'Devis Peinture', category: "Contrats", user: client)
  document1.photo.attach(io: open('seed_images/devis1.jpg'), filename: 'devis1.jpg', content_type: 'image/jpg')
  document1.save!
  document2 = Document.new(title: 'Plan au sol', category: "Plans", user: client)
  document2.photo.attach(io: open('seed_images/devis2.jpg'), filename: 'devis2.jpg', content_type: 'image/jpg')
  document2.save!

  puts "---------- ça créer ses JOBS"

  jobs = ['Fondation', 'Murs', 'Toiture', 'Revetement', 'Isolation', 'Plomberie', 'Electicite', 'Peinture'].reverse

  jobs.each do |job|
    var = Job.create!(name: job, user: client)
    puts "#{var.name} a été créé !!!!!"

  end
end

puts "==============================="
puts "Et c'est ainsi que les seeds se terminent."
