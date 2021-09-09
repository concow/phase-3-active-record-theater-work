macbeth = Role.create(character_name: "Macbeth")

# con = Audition.create(role_id :macbeth.id, actor: "Connor", location: "Seattle", phone: "(444) 765-4563", hired: true)

puts macbeth.character_name

puts "Connor auditions for #{con.role.character_name}"
puts "Hired? #{con.hired}"
con.call_back
puts "Hired? #{con.hired}"

puts "all auditions"
puts macbeth.actors
puts
puts "all locations"
puts
puts macbeth.locations
puts
puts "Macbeth Lead:"
puts macbeth.lead.actor
puts "mcduff lead"
puts mcduff.lead






# 50.times do
#   # create a game with random data
#   Game.create(
#     title: Faker::Game.title,
#     genre: Faker::Game.genre,
#     platform: Faker::Game.platform,
#     price: rand(0..60) # random number between 0 and 60
#   )
# end