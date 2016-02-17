# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# TodoList.destroy_all
# User.destroy_all

# fiorina = User.create! :username => "fiorina", :password_digest => "fiorina" 
# trump = User.create! :username => "trump", :password_digest => "trump" 
# carson = User.create! :username => "carson", :password_digest => "carson" 
# clinton = User.create! :clinton => "clinton", :password_digest => "clinton" 

# fiorina.profile.create(gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina")

# fiorina_profile = Profile.create! gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina", :user => fiorina
# trump_profile = Profile.create! gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump", :user => trump
# carson_profile = Profile.create! "male", birth_year: 1951, first_name: "Ben", last_name: "Carson", :user => carson
# clinton_profile = Profile.create! "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton", :user => clinton

users = User.create! [
	{username: "Fiorina", password_digest: "fiorina"},
	{username: "Trump", password_digest: "trump"},
	{username: "Carson", password_digest: "carson"},
	{username: "Clinton", password_digest: "clinton"}
]


Profile.create! [
	{gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina", user: users[0]},
	{gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump", user: users[1]},
	{gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson", user: users[2]},
	{gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton", user: users[3]}
]

# User.first.profile.create![
# 	{gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina", user: 1}
# ]

# User.where(username:  "trump")[0].profile.create![
# 	{gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump", user: 2}
# ]

# User.where(username:  "carson")[0].profile.create![
# 	{gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson", user: 3}
# ]

# User.where(username:  "clinton")[0].profile.create![
# 	{gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton", user: 4}
# ]

lists = TodoList.create! [
	{list_name: "Carly's", list_due_date: Date.today.next_year, user:  users[0]},
	{list_name: "Donald's", list_due_date: Date.today.next_year, user: users[1] },
	{list_name: "Ben's", list_due_date: Date.today.next_year, user: users[2]},
	{list_name: "Hillary's", list_due_date: Date.today.next_year, user: users[3]}
]

TodoItem.create! [
	{due_date: Date.today.next_year, title:"Clean Streets", description:"Remove all garbage", completed: false, todo_list: lists[0] },
	{due_date: Date.today.next_year, title:"Destroy criminals", description:"Improve jails", completed: false, todo_list:lists[0] },
	{due_date: Date.today.next_year, title:"Hold a groundhog", description:"Attend a Groundhog Day's ceremony", completed: false, todo_list:lists[0] },
	{due_date: Date.today.next_year, title:"Do dishes", description:"Wash all dishes at home if they still dirty", completed:false, todo_list:lists[0] },
	{due_date: Date.today.next_year, title:"Have fun", description:"Go to the zoo with orphaned children", completed:false, todo_list:lists[0] },

	{due_date: Date.today.next_year, title:"Wall", description:"Build a Great Mexican Wall", completed:false, todo_list:lists[1] },
	{due_date: Date.today.next_year, title:"Increase wealth", description:"Build a couple of new skyscrapers with my name", completed:false, todo_list:lists[1] },
	{due_date: Date.today.next_year, title:"Gun law", description:"Give a gun for every american", completed:false, todo_list:lists[1] },
	{due_date: Date.today.next_year, title:"Immigration law", description:"Cancel the law allowing to get citizenship for those who born on american land", completed:false, todo_list:lists[1] },
	{due_date: Date.today.next_year, title:"Return slavery", description:"Sun is still up", completed:false, todo_list:lists[1] },

	{due_date: Date.today.next_year, title:"Call Mom", description:"Say: I'm okay, Mom!", completed:false, todo_list:lists[2] },
	{due_date: Date.today.next_year, title:"Fix the car", description:"The car needs to be in one piece and not to drop pieces", completed:false, todo_list:lists[2] },
	{due_date: Date.today.next_year, title:"Start going to gym", description:"My belly doesn't fit the pool", completed:false, todo_list:lists[2] },
	{due_date: Date.today.next_year, title:"Get educated", description:"Or at least get to know how mush is 3+8", completed:false, todo_list:lists[2] },
	{due_date: Date.today.next_year, title:"Do HCarly's dishes", description:"Until it's not too late", completed:false, todo_list:lists[2] },

	{due_date: Date.today.next_year, title:"Top secret", description:"Use personal e-mail for top secret conversations", completed:false, todo_list:lists[3]},
	{due_date: Date.today.next_year, title:"Divorse", description:"Get separated with Bill", completed:false, todo_list:lists[3]},
	{due_date: Date.today.next_year, title:"Kill Monica", description:"She should never open her mouth again", completed:false, todo_list:lists[3] },
	{due_date: Date.today.next_year, title:"Hug a groundhog", description:"At least don't drop it", completed:false, todo_list:lists[3] },
	{due_date: Date.today.next_year, title:"Smile", description:"People love idiots", completed:false, todo_list:lists[3] }
]
