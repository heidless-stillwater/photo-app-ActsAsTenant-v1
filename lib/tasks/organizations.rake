namespace :organizations do
  desc "seed organizations"
  task seed_organizations: :environment do
    Organization.destroy_all

    lumin = Organization.create(name: "Lumin Inc")
    choam = Organization.create(name: "C.H.O.A.M")
    puts "LUMIN: #{lumin.name}"
    puts "CHOAM: #{choam.name}"

  end

end
