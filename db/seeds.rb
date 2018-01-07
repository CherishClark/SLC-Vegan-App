100.times do |post|
  Post.create!(
    title: "Where can I find hot chocolate",
    suggestions: "Sages Cafe",
    alternative_names: "hot coco")
end

puts "made 100 posts"