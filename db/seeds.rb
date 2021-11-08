# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
    Blog.create!(
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
        title:  "Portfolio title: #{entry}",
        subtitle: "My service",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tortor condimentum lacinia quis vel eros donec ac. Nisi porta lorem mollis aliquam ut. Diam quis enim lobortis scelerisque fermentum dui faucibus in. Ornare arcu dui vivamus arcu felis. Id semper risus in hendrerit. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Ultrices sagittis orci a scelerisque purus semper eget duis at. Sed elementum tempus egestas sed sed risus pretium quam vulputate. Velit aliquet sagittis id consectetur. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Varius sit amet mattis vulputate enim. Habitant morbi tristique senectus et netus et malesuada fames ac.",
        main_image: "https://placeholder.com/600x400",
        thumb_image: "https://placeholder.com/350x200"
    )
end
puts "#{Portfolio.all.count} entries created"