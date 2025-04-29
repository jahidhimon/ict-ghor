# Clear existing data (optional - use carefully in production)
Chapter.destroy_all

# Create chapters with translations
chapters = [
  {
    position: 1,
    translations: [
      { locale: 'en', name: "ICT: World and Bangladesh Perspective" },
      { locale: 'bn', name: "আইসিটি: বৈশ্বিক ও বাংলাদেশ প্রেক্ষাপট" }
    ]
  },
  {
    position: 2,
    translations: [
      { locale: 'en', name: "Communication System and Networking" },
      { locale: 'bn', name: "যোগাযোগ ব্যবস্থা ও নেটওয়ার্কিং" }
    ]
  },
  {
    position: 3,
    translations: [
      { locale: 'en', name: "Number System and Digital Device" },
      { locale: 'bn', name: "সংখ্যা পদ্ধতি ও ডিজিটাল ডিভাইস" }
    ]
  },
  {
    position: 4,
    translations: [
      { locale: 'en', name: "Web Design and HTML" },
      { locale: 'bn', name: "ওয়েব ডিজাইন ও এইচটিএমএল" }
    ]
  },
  {
    position: 5,
    translations: [
      { locale: 'en', name: "Programming Language" },
      { locale: 'bn', name: "প্রোগ্রামিং ভাষা" }
    ]
  },
  {
    position: 6,
    translations: [
      { locale: 'en', name: "Database Management System" },
      { locale: 'bn', name: "ডাটাবেস ম্যানেজমেন্ট সিস্টেম" }
    ]
  }
]

chapters.each do |chapter_data|
  chapter = Chapter.create!(position: chapter_data[:position])
  chapter_data[:translations].each do |translation|
    chapter.translations.create!(translation)
  end
  english_name = chapter.translations.find_by(locale: 'en').name
  chapter.update!(slug: english_name.parameterize)
  puts "Created chapter: #{chapter.translated_name} (Position: #{chapter.position})"
end

puts "\nSuccessfully created:"
puts "- #{Chapter.count} chapters"
puts "- #{ChapterTranslation.count} translations"
