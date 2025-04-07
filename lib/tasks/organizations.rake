namespace :organizations do
  desc "seed organizations"
  task seed_organizations: :environment do
    Organization.destroy_all

    lumin = Organization.create(name: "Lumin Inc", active_org: false)
    choam = Organization.create(name: "C.H.O.A.M", active_org: true)
    puts "LUMIN: #{lumin.name} : #{lumin.active_org}"
    puts "CHOAM: #{choam.name} : #{choam.active_org}"

    user1 = User.create(email: "jsnow@test.com", username: "jsnow", password: "password", organization_id: choam.id)
    user2 = User.create(email: "test_1@test.com", username: "t1000", password: "password", organization_id: lumin.id)
    puts "user1: #{user1.email} #{user1.username}"
    puts "user2: #{user2.email} #{user1.username}"
  end
end
