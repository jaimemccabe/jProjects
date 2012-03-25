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

Story.create name: "Read ruby", project_id: Project.first.id
Story.create name: "Learn Rails", project_id: Project.last.id

story_count = Story.count
first = Story.first.id
last = Story.last.id

10.times do |t|
  Task.create title: "Task#{t}", story_id: rand(first..last), status: rand(1..4)
end