namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    
    99.times do |n|
      username = "#{Faker::Name.last_name}#{n+1}"
      name  = Faker::Name.name
      email = Faker::Internet.email
      password  = "password"
      User.create!(username: username,
                   name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end