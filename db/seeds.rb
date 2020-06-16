

puts "ceci marque le debut des seeds.."

puts "empezamos la desrucion de las seedas"

Job.destroy_all
User.destroy_all
Document.destroy_all

puts "---------- ça créer du USERS"

robert = User.create!(company_name: 'RhoneKonst', phone_number: '06 79 09 38 18', email: 'robert@konst.fr', password: 'azerty')
client1 = User.create!(first_name: 'Marine', last_name: 'Bouvier', phone_number: '06 81 92 45 59', address_street: '20 rue des Caps', address_zip: 69005, address_city: 'Lyon', email: 'boubou@gmail.com', password: 'azerty')
client2 = User.create!(first_name: 'Jean', last_name: 'Charles', phone_number: '06 81 82 45 59', address_street: '32 allée des crapeaux', address_zip: 69007, address_city: 'Lyon', email: 'jc@gmail.com', password: 'azerty')
client3 = User.create!(first_name: 'Marc', last_name: 'Ronchant', phone_number: '06 81 92 45 58', address_street: '455 avenue du champ', address_zip: 69006, address_city: 'Lyon', email: 'mr@gmail.com', password: 'azerty')

clients = [client1, client2, client3]

puts "---------- ça créer du JOBS"
jobs = ['fondation', 'murs', 'toiture', 'revetement', 'isolation', 'plomberie', 'electicite', 'peinture']

clients.each do |client|

  document1 = Document.new(title: 'Devis', category: "administratif", user: client)
  document1.photos.attach(io: open('seed_images/devis1.jpg'), filename: 'devis1.jpg', content_type: 'image/jpg')
  document1.save!
  document2 = Document.new(title: 'Devis', category: "administratif", user: client)
  document2.photos.attach(io: open('seed_images/devis2.jpg'), filename: 'devis2.jpg', content_type: 'image/jpg')
  document2.save!

  jobs.each do |job|
    var = Job.create!(name: job, user: client)
    puts "#{var.name} a été créé!!!!!"

    Task.create!(title: "Tâche.. pistache", content: "Voici la description de notre tâche. J'espere que vous avez apprécié !", job: var)
    Task.create!(title: "Tâche.. piscine", content: "T'as capté la reférence? lol xD", job: var)
  end
end



puts "==============================="
puts "Et c'est ainsi que les seeds se terminent."
