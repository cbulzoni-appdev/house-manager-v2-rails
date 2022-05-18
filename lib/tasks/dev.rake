desc "Fill the database tables with some sample data"
task sample_data: :environment do
  require 'faker'
  starting = Time.now

  Project.delete_all
  Appliance.delete_all
  Contact.delete_all
  House.delete_all
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

    # p user.errors.full_messages
  end

  users = User.all

  users.each do |user|
    house = user.houses.create(
      street_address: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      zip_code: Faker::Address.zip_code
    )

    10.times do
      contact = user.contacts.create(
         company_name: Faker::Company.name,
         contact_name: Faker::Name.name,
         contact_type: Faker::Construction.role,
         email: "sample@sample.com",
         phone: "555-555-5555"
      )
    end

    possible_appliance_types = ["Air Conditioner","Water Heater","Sump Pump","Furnace","Refrigerator","Range","Oven",
                                "Stove","Microwave","Dishwasher","Washing Machine","Dryer","Other"]

    possible_appliance_types.each do |appliance_type|
      if appliance_type.in?(['Furnace','Water Heater','Air Conditioner','Sump Pump'])
        appliance_category = 'Mechanical'
      elsif appliance_type.in?(['Range','Oven','Stove','Microwave','Dishwasher'])
        appliance_category = 'Kitchen'
      elsif appliance_type.in?(['Washing Machine','Dryer'])
        appliance_category = 'Laundry'
      else
        appliance_category = 'Other'
      end
      
      service_date = Faker::Date.between(from: '2019-01-01', to: '2022-05-01')

      appliance = user.houses.first.appliances.create(
        category: appliance_category,
        appliance_type: appliance_type,
        make: Faker::Appliance.brand,
        model: Faker::Number.number(digits: 4),
        year: 2015,
        last_serviced: service_date,
        service_due: service_date + 1.years,
        notes: Faker::Lorem.sentences(number: 1),
        contact_id: user.contacts.sample.id
      )
    end

    project = user.houses.first.projects.create(
        description: "My project",
        status: "In Progress",
        date_started: Faker::Date.between(from: '2019-01-01', to: '2022-05-01'),
        #date_completed:
        notes: "My notes",
        priority: "High",
        estimated_cost: 135,
        contact_id: user.contacts.sample.id
    )
  end

  ending = Time.now
  p "It took #{(ending - starting).to_i} seconds to create sample data."
  p "There are now #{User.count} users."
  p "There are now #{House.count} houses."
  p "There are now #{Contact.count} contacts."
  p "There are now #{Appliance.count} appliances."
  p "There are now #{Project.count} projects."
end