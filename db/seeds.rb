# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.destroy_all
  Story.destroy_all
   Task.destroy_all

Project.create name: "Jaime's Project"
Project.create name: "Kori's Project"

Project.first.stories.create name: "Read ruby"
Project.first.stories.create name: "Don't get caught"
Project.last.stories.create name: "Learn Rails"

stories = Story.all

20.times do |t|
  stories.shuffle.first.tasks.create title: "Task#{t}", status: rand(1..4)
end
