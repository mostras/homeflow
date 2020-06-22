

puts "ceci marque le debut des seeds.."

puts "empezamos la desrucion de las seedas"

Document.destroy_all
Job.destroy_all
User.destroy_all

puts "---------- ça créer du USERS"

robert = User.new(first_name: 'Robert', last_name: 'Chantier', company_name: 'RhoneKonst', phone_number: '06 79 09 38 18', email: 'robert@gmail.com', password: 'azerty')
robert.photo.attach(io: open('seed_images/avatar.png'), filename: 'avatar.png', content_type: 'image/png')
robert.save!

client1 = User.new(constructor: robert, first_name: 'Marine', last_name: 'Bouvier', phone_number: '06 81 92 45 59', address_street: '20 rue des Caps', address_zip: 69005, address_city: 'Lyon', email: 'marine@gmail.com', password: 'azerty')
client1.photo.attach(io: open('seed_images/avatar3.png'), filename: 'avatar3.png', content_type: 'image/png')
client1.save!

client2 = User.new(constructor: robert, first_name: 'Jean', last_name: 'Charles', phone_number: '06 81 82 45 59', address_street: '32 allée des crapeaux', address_zip: 69007, address_city: 'Lyon', email: 'jean@gmail.com', password: 'azerty')
client2.photo.attach(io: open('seed_images/avatar2.png'), filename: 'avatar2.png', content_type: 'image/png')
client2.save!

client3 = User.new(constructor: robert, first_name: 'Marc', last_name: 'Ronchant', phone_number: '06 81 92 45 58', address_street: '455 avenue du champ', address_zip: 69006, address_city: 'Lyon', email: 'marc@gmail.com', password: 'azerty')
client3.photo.attach(io: open('seed_images/avatar1.png'), filename: 'avatar1.png', content_type: 'image/png')
client3.save!

clients = [client1, client2, client3]

puts "---------- ça créer du JOBS"
jobs = ['Fondation', 'Murs', 'Toiture', 'Revetement', 'Isolation', 'Plomberie', 'Electicite', 'Peinture']

clients.each do |client|

  document1 = Document.new(title: 'Devis', category: "administratif", user: client)
  document1.photo.attach(io: open('seed_images/devis1.jpg'), filename: 'devis1.jpg', content_type: 'image/jpg')
  document1.save!
  document2 = Document.new(title: 'Devis', category: "administratif", user: client)
  document2.photo.attach(io: open('seed_images/devis2.jpg'), filename: 'devis2.jpg', content_type: 'image/jpg')
  document2.save!

  jobs.each do |job|
    var = Job.create!(name: job, user: client)
    puts "#{var.name} a été créé !!!!!"

  end
end

puts "==============================="
puts "Et c'est ainsi que les seeds se terminent."
