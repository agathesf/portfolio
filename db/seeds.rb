require "open-uri"

puts "Destroying all instances"

Project.destroy_all

puts "Done destroying"

puts "Launching seed..."

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

first_project = {title: "Project", description: lorem, date: "-- MTH ----"}
project = Project.new(first_project)
project.save!

puts "First project : done"

file = URI.open("https://source.unsplash.com/random")

puts "URI ok"

project.photos.attach(io: file, filename: "random", content_type: "image/png")

puts "... seed done"