desc "Fill the database tables with some sample data"
task sample_data: :environment do
  require 'faker'
  starting = Time.now

  Appliance.delete_all
  Contact.delete_all
  House.delete_all
  Project.delete_all
  User.delete_all

  people = Array.new(10) do 
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      phone_number: "555-555-5555"
    }
  end

  people << { first_name: "Alice", last_name: "Smith", phone_number: "555-555-5555" }

  people.each do |person|
    username = person.fetch(:first_name).downcase
  
    user = User.create(
      email: "#{username}@example.com",
      password: "password",
      username: username
    )

    p user.errors.full_messages
  end

end