# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
## Create default user
u = User.new
u.email = %x(git config user.email)
u.first_name, u.last_name = %x(git config user.name).split(" ")
u.password = "valencia"
u.password_confirmation = "valencia"
u.save!

## Create default project
p = Project.new
p.owner = User.first
p.name = "Dorah"
p.description = "Dorah, killer of Jira"
p.save!

## Create default task
t = Project.first.tasks.new
t.description = "Add tasks functionality to Dorah"
t.assignees << User.first
t.reporter = User.first
t.save!
