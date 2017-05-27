1.upto(3).each do
  Company.create!(
    name: Faker::Company.name,
    description: Faker::Company.catch_phrase
  )
end

1.upto(20).each do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    company_id: [1,2,3].sample
  )
end
