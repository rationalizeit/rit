namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'forgery'

    [User].each(&:delete_all)

    #avatar_file = File.expand_path("app/assets/images/default_avatar.png", Rails.root)
    #prof_count = Profession.count
    #professions = Profession.all
    50.times do  |i|
      person = User.new
      person.password = 'iffath123'
      person.email = 'test' + i.to_s + '@rit.com' 
      person.save
  end
 end
end
