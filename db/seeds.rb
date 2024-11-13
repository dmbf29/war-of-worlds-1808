puts "Cleaning the db..."
Planet.destroy_all

puts "Creating planet(s)"
  planet = Planet.create!(
    name: 'Naboo',
    banner_url: 'https://imgix.ranker.com/list_img_v2/13203/3153203/original/3153203?fit=crop&fm=pjpg&q=80&dpr=2&w=1200&h=720'
  )
puts "... created #{Planet.count} planets."
