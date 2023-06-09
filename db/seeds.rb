require "faker"
require "open-uri"

titles = ["Data-analyst", "Fullstack web-developper", "Front-end web-developper", "Back-end web-developper", "Data-scientist"]
frontone = ["html", "css", "vue.js", "photoshop", "figma"]
fronttwo = ["html", "css", "stimulus", "react", "ajax"]
back = ["ruby", "rails", "SQL", "python", "C", "javascript"]
fullstack = fronttwo + back
analyst = ["digital marketing", "product management", "python", "SQL"]
scientist = ["aws", "docker", "css", "html", "cloud", "javascript"]
allskills = fullstack + analyst + scientist
languages = ["french", "german", "italian", "english", "greek", "russian", "japanese", "portugese", "esperanto", "vietnamese", "wolof"]

# Cleaning DB
puts "Cleaning up database..."
Chatroom.destroy_all
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
lesly.competence_list.add(frontone)
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
eugenie.competence_list.add(back)
eugenie.language_list.add("french", "english", "italian")
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
helene.competence_list.add(fullstack)
helene.language_list.add("french", "english", "greek")
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
lucie.competence_list.add(fullstack)
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
amal.competence_list.add(analyst)
amal.language_list.add("french", "english", "spanish")
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
celine.competence_list.add(scientist)
celine.language_list.add("french", "english", "german")
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
stephanie.competence_list.add(frontone)
stephanie.language_list.add("french", "english", "russian")
stephanie.photo.attach(io: file, filename: "stephanie", content_type: "image/jpeg")
stephanie.save
puts "User 7 created"

puts "Creating user 8"
file = URI.open("https://kitt.lewagon.com/placeholder/users/bineleon")
nelbi = User.new(
  first_name: 'Nelbi',
  last_name: 'Léon',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: true,
  title: titles[1],
  description: "I love solving problems, fixing, understanding stuff and value creativity as well as teamwork. Other interests : Cycling, yoga, music, adventure and much more",
  batch_number: 1000,
  graduation_year: 2022,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'bineleon'
)
nelbi.competence_list.add(fronttwo)
nelbi.language_list.add("french", "english")
nelbi.photo.attach(io: file, filename: "nelbi", content_type: "image/jpeg")
nelbi.mentor_skill_list.add(frontone.sample(2))
nelbi.save
puts "User 8 created"

puts "Creating user 9"
file = URI.open("https://kitt.lewagon.com/placeholder/users/lisamillet")
lisa = User.new(
  first_name: 'Lisa',
  last_name: 'Millet',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: true,
  title: titles[1],
  description: "Hello, my name is Lisa! Passionate about craftsmanship, for the past 5 years I have been focused on supporting artisans and developing solutions for them. In addition to my future web development job, I am the president of the association 'Histoires d'Artisans,' which works towards promoting their expertise, including through the eponymous podcast.",
  batch_number: 1115,
  graduation_year: 2023,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'lisamillet'
)
lisa.competence_list.add(fullstack)
lisa.language_list.add("french", "english", "spanish")
lisa.photo.attach(io: file, filename: "lisa", content_type: "image/jpeg")
lisa.mentor_skill_list.add(frontone.sample(3))
lisa.save
puts "User 9 created"

puts "Creating user 10"
file = URI.open("https://kitt.lewagon.com/placeholder/users/dianejroussillon")
diane = User.new(
  first_name: 'Diane',
  last_name: 'Johnston Roussillon',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'London',
  country: 'UK',
  mentor: true,
  title: titles[2],
  description: "I worked at Le Collectionist for 3 years as head of Supply - i was in charge of developing the owner network, and the portfolio of properties that we suggest on our platform. This job was also about the e-merchandising of the properties on our platform. I joined Le wagon in order to learn the technical skills to work closer to the development team and because I am looking for something more creative.",
  batch_number: 200,
  graduation_year: 2018,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'dianejroussillon'
)
diane.competence_list.add(fullstack)
diane.language_list.add("french", "english", "german")
diane.photo.attach(io: file, filename: "diane", content_type: "image/jpeg")
diane.mentor_skill_list.add(fullstack.sample(5))
diane.save
puts "User 10 created"

puts "Creating user 11"
file = URI.open("https://kitt.lewagon.com/placeholder/users/cveneziani")
cecile = User.new(
  first_name: 'Cécile',
  last_name: 'Veneziani',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Florence',
  country: 'Italy',
  mentor: true,
  title: titles[3],
  description: "Teaching / Coaching / Remote working trip",
  batch_number: 1,
  graduation_year: 2014,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'cveneziani'
)
cecile.competence_list.add(back)
cecile.language_list.add("french", "english", "italian")
cecile.photo.attach(io: file, filename: "cecile", content_type: "image/jpeg")
cecile.mentor_skill_list.add(back.sample(4))
cecile.save
puts "User 11 created"

puts "Creating user 12"
file = URI.open("https://kitt.lewagon.com/placeholder/users/sarahdechance")
sarah = User.new(
  first_name: 'Sarah',
  last_name: 'Dechancé',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Bordeaux',
  country: 'France',
  mentor: true,
  title: titles[3],
  description: "Hi there! I'm a former product development marketer turned into junior Full Stack Developer thanks to Le Wagon (batch #1115, brand new :) ). Looking forwards to learn some more!",
  batch_number: 1115,
  graduation_year: 2023,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'sarahdechance'
)
sarah.competence_list.add(back)
sarah.language_list.add("french", "english")
sarah.photo.attach(io: file, filename: "sarah", content_type: "image/jpeg")
sarah.save
sarah.mentor_skill_list.add(back.sample(3))
puts "User 12 created"

puts "Creating user 13"
file = URI.open("https://kitt.lewagon.com/placeholder/users/mylhouse")
mylene = User.new(
  first_name: 'Mylene',
  last_name: 'Moreau',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Toulon',
  country: 'France',
  mentor: true,
  title: titles[2],
  description: "Artistic director in print graphic design, I choose web development to improve my digital skills and be able to create and develop applications",
  batch_number: 550,
  graduation_year: 2021,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'mylhouse'
)
mylene.competence_list.add(fronttwo)
mylene.language_list.add("french", "english")
mylene.photo.attach(io: file, filename: "mylene", content_type: "image/jpeg")
mylene.mentor_skill_list.add(fronttwo.sample(3))
mylene.save
puts "User 13 created"

puts "Creating user 15"
file = URI.open("https://kitt.lewagon.com/placeholder/users/sabrinaassya")
sabrina = User.new(
  first_name: 'Sabrina',
  last_name: 'Achab',
  email: Faker::Internet.unique.email,
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: true,
  title: titles[0],
  description: "Assistant Program Manager @ Le Wagon - Paris",
  batch_number: 1003,
  graduation_year: 2023,
  github_url: 'https://github.com/',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'sabrinaassya'
)
sabrina.competence_list.add(frontone)
sabrina.language_list.add("french", "english")
sabrina.photo.attach(io: file, filename: "sabrina", content_type: "image/jpeg")
sabrina.mentor_skill_list.add(frontone.sample(3))
sabrina.save
puts "User 15 created"

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
  user.competence_list.add(allskills.sample(4))
  user.language_list.add(languages.sample(3))
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
  user_id: cecile.id
)
internship.requested_skill_list.add(allskills.sample(4))
internship.save
puts "Project 1 created"

puts "Creating project 2"
job_offer = Project.new(
  title: "Job offer for a web-dev position in a startup",
  description: "Hi, we're a young startup in Paris and we are looking for a web-dev for our project, feel free to contact me or visit our repo for more information.",
  repo_url: 'https://github.com/Effendir/bonzai-zone',
  type_of_mission: 1,
  user_id: lisa.id
)
job_offer.requested_skill_list.add(allskills.sample(3))
job_offer.save
puts "Project 2 created"

puts "Creating project 3"
code_review = Project.new(
  title: "Code review offer for a young dev",
  description: "Hello everyone! If any junior dev is looking for code reviewing from a senior dev it'll be my pleasure to help you out!",
  repo_url: "",
  type_of_mission: 3,
  user_id: diane.id
)
code_review.save
puts "Project 3 created"

puts "Creating project 4"
peer_programming = Project.new(
  title: "Looking for a senior dev for peer-programming",
  description: "Hi! As a wagon alumni and junior dev I'm looking for an experienced developper for peer-programming sessions in order to keep enhancing my coding skills in ruby",
  repo_url: "",
  type_of_mission: 2,
  user_id: lesly.id
)
peer_programming.requested_skill_list.add(allskills.sample(6))
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
code_review_two.requested_skill_list.add(allskills.sample(8))
code_review_two.save
puts "Project 5 created"

puts "Seeding done"
