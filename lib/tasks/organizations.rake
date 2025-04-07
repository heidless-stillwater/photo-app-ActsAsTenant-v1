namespace :organizations do
  desc "seed organizations"
  task seed_organizations: :environment do
    Organization.destroy_all

    lumin = Organization.create(name: "Lumin Inc")
    choam = Organization.create(name: "C.H.O.A.M")
    puts "LUMIN: #{lumin.name}"
    puts "CHOAM: #{choam.name}"

    user1 = User.create(email: "jsnow@test.com", username: "jsnow", password: "password", organization_id: choam.id)
    user2 = User.create(email: "test_1@test.com", username: "t1000", password: "password", organization_id: lumin.id)
    puts "user1: #{user1.email} #{user1.username}"
    puts "user2: #{user2.email} #{user1.username}"
  end
end
