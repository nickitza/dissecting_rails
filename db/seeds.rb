# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}" 
    )
end
puts "3 Topics created."

10.times do |blog|
    Blog.create!(
        topic_id: Topic.last.id,
        title: "My Blog Post #{blog}",
        body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    )
end
puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end
puts "5 skills created"

9.times do |entry|
    Portfolio.create!(
        title: Faker::Movies::PrincessBride.character,
        subtitle: "Ruby On Rails",
        body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 10),
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end
8.times do |entry|
    Portfolio.create!(
        title: Faker::Movies::PrincessBride.character,
        subtitle: "Angular",
        body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 10),
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end
puts "#{Portfolio.all.count} portfolios created"

3.times do |tech|
    Portfolio.last.technologies.create!(
        name: "Technology #{tech}"
    )
end
puts "#{Technology.all.count} technologies created"