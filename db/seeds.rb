# Cleaning DB
puts "Cleaning up database..."
User.destroy_all
Project.destroy_all
puts "Database cleaned"

# Creating Users
puts "Creating users"

puts "Creating user 1"
# file = "TEMPLATE DE PY" test
lesly = User.new(
  first_name: 'Lesly',
  last_name: 'Urie',
  email: 'lesly75019@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: 'Web-developper',
  description: "Hi everyone! I'm Lesly, a junior dev specialized in Ruby and I'm looking for a marraine!",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/lesly75',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'lesly75'
)
lesly.competence_list.add("ruby on rails", "javascript", "vue.js", "html", "css", "front-end")
lesly.language_list.add("french", "english")
# lesly.photo.attach(io: file, filename: "lesly.jpg", content_type: "image/jpg")
lesly.save
puts "User 1 created"

puts "Creating user 2"
eugenie = User.new(
  first_name: 'Eugénie',
  last_name: 'Dami',
  email: 'eugene.dami@yahoo.fr',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Bastia',
  country: 'France',
  mentor: false,
  title: 'Web-developper',
  description: "Hi I'm Eugénie, I recently followed a fullstack course at Le Wagon and I'm planning to build my own business in tech!",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/effendir',
  linkedin_url: 'https://linkedin.com/',
  kitt_username: 'Effendir'
)
eugenie.competence_list.add("ruby on rails", "stimulus js", "javascript", "html", "css", "front-end")
eugenie.language_list.add("french", "english")
eugenie.save
puts "User 2 created"

puts "Creating user 3"
helene = User.new(
  first_name: 'Hélène',
  last_name: 'Becquembois',
  email: 'hbecquembois@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: 'Web-developper',
  description: "Hi I'm Hélène, I'm a junior dev and I'm looking forward to collaborate on exciting new challenges!",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/HBecquembois',
  linkedin_url: 'https://www.linkedin.com/in/h%C3%A9l%C3%A8ne-becquembois-66592a118/',
  kitt_username: 'Hbecquembois'
)
helene.competence_list.add("ruby on rails", "javascript", "bootstrap", "html", "css", "front-end")
helene.language_list.add("french", "english")
helene.save
puts "User 3 created"

puts "Creating user 4"
lucie = User.new(
  first_name: 'Lucie',
  last_name: 'Gaget',
  email: 'lucie-gaget@orange.fr',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: 'Web-developper',
  description: "Hello! I'm Lucie, a junior web dev and part-time musician. Feel free to contact me for collabs!",
  batch_number: 1210,
  graduation_year: 2023,
  github_url: 'https://github.com/luciegaget',
  linkedin_url: 'https://www.linkedin.com/in/lucie-gaget-03a0b196/',
  kitt_username: 'luciegaget'
)
lucie.competence_list.add("ruby on rails", "javascript", "html", "css", "front-end")
lucie.language_list.add("french", "english")
lucie.save
puts "User 4 created"

puts "Creating user 5"
wangari = User.new(
  first_name: 'Wangari',
  last_name: 'Muta Maathai',
  email: 'mamamici@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Nairobi',
  country: 'Kenya',
  mentor: true,
  title: 'Data-analyst',
  description: 'We need to promote development that does not destroy our environment.',
  batch_number: 71,
  graduation_year: 2004,
  github_url: 'https://github.com/',
  linkedin_url: 'https://www.linkedin.com/',
  kitt_username: 'mamamici'
)
wangari.competence_list.add("python", "machine learning", "data base", "artificial intelligence")
wangari.language_list.add("arabic", "french", "english")
wangari.mentor_skill_list.add("python", "machine learning", "data base", "artificial intelligence")
wangari.save
puts "User 5 created"

puts "Creating user 6"
hypatia = User.new(
  first_name: 'Hypatia',
  last_name: 'Of Alexandria',
  email: 'patty@alexandria.ad',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Alexandria',
  country: 'Egypt',
  mentor: true,
  title: 'Data-scientist',
  description: "Reserve your right to think, for even to think wrongly is better than not to think at all. PS : I swear I didn't smoke in the library!",
  batch_number: 1,
  graduation_year: -415,
  github_url: 'https://github.com/',
  linkedin_url: 'https://www.linkedin.com/',
  kitt_username: 'Patty'
)
hypatia.competence_list.add("python", "statistics", "data vizualisation", "freelance")
hypatia.language_list.add("arabic", "french", "english")
hypatia.mentor_skill_list.add("python", "statistics", "data vizualisation")
hypatia.save
puts "User 6 created"

puts "Creating user 7"
chiaki = User.new(
  first_name: 'Chiaki',
  last_name: 'Mukai',
  email: 'mukai.chiaki@googlemail.jp',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Tatebayashi',
  country: 'Japan',
  mentor: true,
  title: 'Data-scientist',
  description: "Many people are losing themselves.They don't have something to believe in...We should believe in ourselves and be more self-confident.",
  batch_number: 1209,
  graduation_year: 2022,
  github_url: 'https://github.com/',
  linkedin_url: 'https://www.linkedin.com/',
  kitt_username: 'chiakimukai'
)
chiaki.competence_list.add("python", "statistics", "sql", "data vizualisation", "freelance")
chiaki.language_list.add("english", "japanese")
chiaki.mentor_skill_list.add("python", "statistics", "data vizualisation")
chiaki.save
puts "User 7 created"

puts "Creating user 8"
ada = User.new(
  first_name: 'Ada',
  last_name: 'Lovelace',
  email: 'adalovelace@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'London',
  country: 'England',
  mentor: true,
  title: 'Computer-programmer',
  description: "If you can't give me poetry, can't you give me poetic science",
  batch_number: 40,
  graduation_year: 1839,
  github_url: 'https://github.com/',
  linkedin_url: 'https://www.linkedin.com/',
  kitt_username: 'Ada Lovelace'
)
ada.competence_list.add("ruby on rails", "python", "javascript", "react", "stimulus js", "back-end", "front-end", "bootstrap", "management", "debugging", "github")
ada.language_list.add("english")
ada.mentor_skill_list.add("ruby on rails", "javascript", "stimulus js", "back-end", "front-end", "management", "debugging", "github")
ada.save
puts "User 8 created"

puts "Creating user 9"
rosa = User.new(
  first_name: 'Rosa',
  last_name: 'Parks',
  email: 'rosaparks@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Detroit',
  country: 'United States',
  mentor: false,
  title: 'Web-developper',
  description: "I want to be remembered as someone who cares about freedom, equality, justice and the prosperity of peoples.",
  batch_number: 12,
  graduation_year: 1930,
  github_url: 'https://github.com/',
  linkedin_url: 'https://www.linkedin.com/',
  kitt_username: 'Rosaparks'
)
rosa.competence_list.add("ruby on rails", "python", "back-end", "freelance")
rosa.language_list.add("english")
rosa.save
puts "User 9 created"

puts "Creating user 10"
simone = User.new(
  first_name: 'Simone',
  last_name: 'Veil',
  email: 'simoneveil@sfr.com',
  password: 'azerty',
  password_confirmation: 'azerty',
  city: 'Paris',
  country: 'France',
  mentor: false,
  title: 'Data-analyst',
  description:  "As long as we get along, we share, we live together.",
  batch_number: 20,
  graduation_year: 1930,
  github_url: 'https://github.com',
  linkedin_url: 'https://www.linkedin.com',
  kitt_username: 'Simooone'
)
simone.competence_list.add("python", "statistics", "data vizualisation", "management")
simone.language_list.add("french", "english")
simone.save

puts "User 10 created"

# seeding projects

puts "Creating projects..."

puts "Creating project 1"
internship = Project.new(
  title: "2 months internship at Le Wagon Paris",
  description: "Come to Paris and test your coding and teaching skills at Le Wagon Paris. As an alumni, you will have to review code and teach coding skills. 1 year experience in rails needed.",
  repo_url: 'https://github.com/Lewagon',
  type_of_mission: 0,
  user_id: ada.id
)
internship.save
puts "Project 1 created"

puts "Creating project 2"
job_offer = Project.new(
  title: "Job offer for a web-dev position in a startup",
  description: "Hi, we're a young startup in Paris and we are looking for a web-dev for our project, feel free to contact me or visit our repo for more information.",
  repo_url: 'https://github.com/Effendir/bonzai-zone',
  type_of_mission: 1,
  user_id: chiaki.id
)
job_offer.save
puts "Project 2 created"

puts "Creating project 3"
code_review = Project.new(
  title: "Code review offer for a young dev",
  description: "Hello everyone! If any junior dev is looking for code reviewing from a senior dev it'll be my pleasure to help you out!",
  repo_url: "",
  type_of_mission: 3,
  user_id: chiaki.id
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
