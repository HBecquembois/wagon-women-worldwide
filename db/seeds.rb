require "faker"
require "open-uri"

titles = ["Data-analyst", "Fullstack web-developper", "Front-end web-developper", "Back-end web-developper", "Data-scientist"]

# Cleaning DB
puts "Cleaning up database..."
Project.destroy_all
User.destroy_all
puts "Database cleaned"

# Creating Users
puts "Creating real users"

fake_avatar_url = "https://xsgames.co/randomusers/avatar.php?g=female"

puts "Creating user 1"
file = URI.open("https://kitt.lewagon.com/placeholder/users/lesly75")
lesly = User.new(
  first_name: 'Lesly',
  last_name: 'Urie',
  email: 'lesly75019@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: titles[1],
  description: "Hi everyone! I'm Lesly, a junior dev specialized in Ruby and I'm looking for a marraine!",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/lesly75',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'lesly75'
)
lesly.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
lesly.language_list.add("french", "english")
lesly.photo.attach(io: file, filename: "lesly", content_type: "image/jpeg")
lesly.save
puts "User 1 created"

puts "Creating user 2"
file = File.open(Rails.root.join('app/assets/images/Ketty1.jpg'))
eugenie = User.new(
  first_name: 'Eugénie',
  last_name: 'Dami',
  email: 'eugene.dami@yahoo.fr',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Bastia',
  country: 'France',
  mentor: false,
  title: titles[1],
  description: "Hi I'm Eugénie, I recently followed a fullstack course at Le Wagon and I'm planning to build my own business in tech!",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/effendir',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'Effendir'
)
eugenie.competence_list.add("ruby on rails", "stimulus js", "javascript", "html", "css", "front-end")
eugenie.language_list.add("french", "english")
eugenie.photo.attach(io: file, filename: "eugenie", content_type: "image/jpeg")
eugenie.save
puts "User 2 created"

puts "Creating user 3"
file = URI.open("https://kitt.lewagon.com/placeholder/users/hbecquembois")
helene = User.new(
  first_name: 'Hélène',
  last_name: 'Becquembois',
  email: 'hbecquembois@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: titles[1],
  description: "Hi I'm Hélène, I'm a junior dev and I'm looking forward to collaborate on exciting new challenges!",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/HBecquembois',
  linkedin_url: 'https://www.linkedin.com/in/h%C3%A9l%C3%A8ne-becquembois-66592a118/',
  kitt_username: 'Hbecquembois'
)
helene.competence_list.add("ruby on rails", "javascript", "bootstrap", "html", "css", "front-end")
helene.language_list.add("french", "english")
helene.photo.attach(io: file, filename: "helene", content_type: "image/jpeg")
helene.save
puts "User 3 created"

puts "Creating user 4"
file = URI.open("https://kitt.lewagon.com/placeholder/users/luciegaget")
lucie = User.new(
  first_name: 'Lucie',
  last_name: 'Gaget',
  email: 'lucie-gaget@orange.fr',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: titles[1],
  description: "Hello! I'm Lucie, a junior web dev and part-time musician. Feel free to contact me for collabs!",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/luciegaget',
  linkedin_url: 'https://www.linkedin.com/in/lucie-gaget-03a0b196/',
  kitt_username: 'luciegaget'
)
lucie.competence_list.add("ruby on rails", "javascript", "html", "css", "front-end")
lucie.language_list.add("french", "english")
lucie.photo.attach(io: file, filename: "lucie", content_type: "image/jpeg")
lucie.save
puts "User 4 created"

puts "Creating user 5"
file = URI.open("https://kitt.lewagon.com/placeholder/users/AmalRabbani")
amal = User.new(
  first_name: 'Amal',
  last_name: 'Rabbani',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: titles[1],
  description: "Hello, I'm planning to go freelance but I did Le Wagon to reinforce some skills before start. I've worked 7 year in com/marketing and I've learn code on the job.",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'AmalRabbani'
)
amal.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
amal.language_list.add("french", "english")
amal.photo.attach(io: file, filename: "amal", content_type: "image/jpeg")
amal.save
puts "User 5 created"

puts "Creating user 6"
file = URI.open("https://kitt.lewagon.com/placeholder/users/celine-chader")
celine = User.new(
  first_name: 'Céline',
  last_name: 'Chader',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: titles[1],
  description: "After 6 years of marketing, communication and event planning, I decided to embark on a new challenge : learning to code. Let's see how it goes !",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'celine-chader'
)
celine.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
celine.language_list.add("french", "english")
celine.photo.attach(io: file, filename: "celine", content_type: "image/jpeg")
celine.save
puts "User 6 created"

puts "Creating user 7"
file = URI.open("https://kitt.lewagon.com/placeholder/users/Boubouboubs")
stephanie = User.new(
  first_name: 'Stéphanie',
  last_name: 'Bourdillon',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: titles[1],
  description: "Having worked mostly for the food industry in roles in corporate finance and management, I'm excited to learn coding skills that will help me support or create new (more flexible) businesses hopefully.",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'boubouboubs'
)
stephanie.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
stephanie.language_list.add("french", "english")
stephanie.photo.attach(io: file, filename: "stephanie", content_type: "image/jpeg")
stephanie.save
puts "User 7 created"

# puts "Creating user 8"
# file = URI.open("https://kitt.lewagon.com/placeholder/users/XXX")
# XXX = User.new(
#   first_name: 'XXX',
#   last_name: 'XXX',
#   email: Faker::Internet.unique.email,
#   password: 'azerty',
#   password_confirmation: 'azerty',
#   city: 'XXX',
#   country: 'France',
#   mentor: false,
#   title: 'XXX',
#   description: "XXX",
#   batch_number: 000,
#   graduation_year: 000,
#   github_url: 'https://github.com/',
#   linkedin_url: 'https://linkedin.com/',
#   kitt_username: 'XXX'
# )
# XXX.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
# XXX.language_list.add("french", "english")
# XXX.photo.attach(io: file, filename: "XXX", content_type: "image/jpeg")
# XXX.save
# puts "User 8 created"

# puts "Creating user 9"
# file = URI.open("https://kitt.lewagon.com/placeholder/users/XXX")
# XXX = User.new(
#   first_name: 'XXX',
#   last_name: 'XXX',
#   email: Faker::Internet.unique.email,
#   password: 'azerty',
#   password_confirmation: 'azerty',
#   city: 'XXX',
#   country: 'France',
#   mentor: false,
#   title: 'XXX',
#   description: "XXX",
#   batch_number: 000,
#   graduation_year: 000,
#   github_url: 'https://github.com/',
#   linkedin_url: 'https://linkedin.com/',
#   kitt_username: 'XXX'
# )
# XXX.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
# XXX.language_list.add("french", "english")
# XXX.photo.attach(io: file, filename: "XXX", content_type: "image/jpeg")
# XXX.save
# puts "User 9 created"

# puts "Creating user 10"
# file = URI.open("https://kitt.lewagon.com/placeholder/users/XXX")
# XXX = User.new(
#   first_name: 'XXX',
#   last_name: 'XXX',
#   email: Faker::Internet.unique.email,
#   password: 'azerty',
#   password_confirmation: 'azerty',
#   city: 'XXX',
#   country: 'France',
#   mentor: false,
#   title: 'XXX',
#   description: "XXX",
#   batch_number: 000,
#   graduation_year: 000,
#   github_url: 'https://github.com/',
#   linkedin_url: 'https://linkedin.com/',
#   kitt_username: 'XXX'
# )
# XXX.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
# XXX.language_list.add("french", "english")
# XXX.photo.attach(io: file, filename: "XXX", content_type: "image/jpeg")
# XXX.save
# puts "User 10 created"

# puts "Creating user 11"
# file = URI.open("https://kitt.lewagon.com/placeholder/users/XXX")
# XXX = User.new(
#   first_name: 'XXX',
#   last_name: 'XXX',
#   email: Faker::Internet.unique.email,
#   password: 'azerty',
#   password_confirmation: 'azerty',
#   city: 'XXX',
#   country: 'France',
#   mentor: false,
#   title: 'XXX',
#   description: "XXX",
#   batch_number: 000,
#   graduation_year: 000,
#   github_url: 'https://github.com/',
#   linkedin_url: 'https://linkedin.com/',
#   kitt_username: 'XXX'
# )
# XXX.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
# XXX.language_list.add("french", "english")
# XXX.photo.attach(io: file, filename: "XXX", content_type: "image/jpeg")
# XXX.save
# puts "User 11 created"

# puts "Creating user 12"
# file = URI.open("https://kitt.lewagon.com/placeholder/users/XXX")
# XXX = User.new(
#   first_name: 'XXX',
#   last_name: 'XXX',
#   email: Faker::Internet.unique.email,
#   password: 'azerty',
#   password_confirmation: 'azerty',
#   city: 'XXX',
#   country: 'France',
#   mentor: false,
#   title: 'XXX',
#   description: "XXX",
#   batch_number: 000,
#   graduation_year: 000,
#   github_url: 'https://github.com/',
#   linkedin_url: 'https://linkedin.com/',
#   kitt_username: 'XXX'
# )
# XXX.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
# XXX.language_list.add("french", "english")
# XXX.photo.attach(io: file, filename: "XXX", content_type: "image/jpeg")
# XXX.save
# puts "User 12 created"

# puts "Creating user 13"
# file = URI.open("https://kitt.lewagon.com/placeholder/users/XXX")
# XXX = User.new(
#   first_name: 'XXX',
#   last_name: 'XXX',
#   email: Faker::Internet.unique.email,
#   password: 'azerty',
#   password_confirmation: 'azerty',
#   city: 'XXX',
#   country: 'France',
#   mentor: false,
#   title: 'XXX',
#   description: "XXX",
#   batch_number: 000,
#   graduation_year: 000,
#   github_url: 'https://github.com/',
#   linkedin_url: 'https://linkedin.com/',
#   kitt_username: 'XXX'
# )
# XXX.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
# XXX.language_list.add("french", "english")
# XXX.photo.attach(io: file, filename: "XXX", content_type: "image/jpeg")
# XXX.save
# puts "User 13 created"

# puts "Creating user 15"
# file = URI.open("https://kitt.lewagon.com/placeholder/users/XXX")
# XXX = User.new(
#   first_name: 'XXX',
#   last_name: 'XXX',
#   email: Faker::Internet.unique.email,
#   password: 'azerty',
#   password_confirmation: 'azerty',
#   city: 'XXX',
#   country: 'France',
#   mentor: false,
#   title: 'XXX',
#   description: "XXX",
#   batch_number: 000,
#   graduation_year: 000,
#   github_url: 'https://github.com/',
#   linkedin_url: 'https://linkedin.com/',
#   kitt_username: 'XXX'
# )
# XXX.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
# XXX.language_list.add("french", "english")
# XXX.photo.attach(io: file, filename: "XXX", content_type: "image/jpeg")
# XXX.save
# puts "User 15 created"

puts "Created real users"



puts "Creating fake users"


30.times do
  file = URI.open(fake_avatar_url)
  user = User.new(
    first_name: Faker::Name.unique.female_first_name,
    last_name: Faker::Name.unique.last_name,
    email: Faker::Internet.unique.email,
    password: 'azerty',
    password_confirmation: 'azerty',
    city: Faker::Address.city,
    country: Faker::Address.country,
    mentor: false,
    title: titles.sample,
    description: Faker::Quote.yoda,
    batch_number: rand(1212),
    graduation_year: rand(2014..2023),
    github_url: 'https://github.com/',
    linkedin_url: 'https://linkedin.com/',
    kitt_username: :first_name
  )
  user.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
  user.language_list.add("french", "english")
  user.photo.attach(io: file, filename: :first_name, content_type: "image/jpeg")
  user.save
end

puts "30 fake users created"

# seeding projects

puts "Creating projects..."

puts "Creating project 1"
internship = Project.new(
  title: "2 months internship at Le Wagon Paris",
  description: "Come to Paris and test your coding and teaching skills at Le Wagon Paris. As an alumni, you will have to review code and teach coding skills. 1 year experience in rails needed.",
  repo_url: 'https://github.com/Lewagon',
  type_of_mission: 0,
  user_id: lesly.id
)
internship.save
puts "Project 1 created"

puts "Creating project 2"
job_offer = Project.new(
  title: "Job offer for a web-dev position in a startup",
  description: "Hi, we're a young startup in Paris and we are looking for a web-dev for our project, feel free to contact me or visit our repo for more information.",
  repo_url: 'https://github.com/Effendir/bonzai-zone',
  type_of_mission: 1,
  user_id: eugenie.id
)
job_offer.save
puts "Project 2 created"

puts "Creating project 3"
code_review = Project.new(
  title: "Code review offer for a young dev",
  description: "Hello everyone! If any junior dev is looking for code reviewing from a senior dev it'll be my pleasure to help you out!",
  repo_url: "",
  type_of_mission: 3,
  user_id: helene.id
)
code_review.save
puts "Project 3 created"

puts "Creating project 4"
peer_programming = Project.new(
  title: "Looking for a senior dev for peer-programming",
  description: "Hi! As a wagon alumni and junior dev I'm looking for an experienced developper for peer-programming sessions in order to keep enhancing my coding skills in ruby",
  repo_url: "",
  type_of_mission: 2,
  user_id: helene.id
)
peer_programming.save
puts "Project 4 created"

puts "Creating project 5"
code_review_two = Project.new(
  title: "Looking for a fullstack senior dev",
  description: "Hello there! I'm a junior dev from batch #1210 and I'm looking for a senior dev to review my rails app, from back to front. Feel free to contact me or take a peek at my repo",
  repo_url: "https://github.com/luciegaget",
  type_of_mission: 3,
  user_id: lucie.id
)
code_review_two.save
puts "Project 5 created"

puts "Seeding done"
