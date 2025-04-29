# Clear existing data (optional - use carefully in production)
Chapter.destroy_all

# Create chapters
chapters = [
  { name: "ICT: World and Bangladesh Perspective", position: 1 },
  { name: "Communication System and Networking", position: 2 },
  { name: "Number System and Digital Device", position: 3 },
  { name: "Web Design and HTML", position: 4 },
  { name: "Programming Language", position: 5 },
  { name: "Database Management System", position: 6 }
]

chapters.each do |chapter|
  Chapter.create!(chapter)
  puts "Created chapter: #{chapter[:name]}"
end

puts "Successfully created #{Chapter.count} chapters"
