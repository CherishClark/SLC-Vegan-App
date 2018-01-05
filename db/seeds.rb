100.times do |post|
  Post.create!(
    title: "Hot Chocolate",
    suggestions: "Sages Cafe",
    alternative_names: "hot coco")
end

puts "made 100 posts"