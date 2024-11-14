puts "Cleaning the db..."
Planet.destroy_all
Weapon.destroy_all

puts "Creating planet(s)"
  planet = Planet.create!(
    name: 'Naboo',
    banner_url: 'https://imgix.ranker.com/list_img_v2/13203/3153203/original/3153203?fit=crop&fm=pjpg&q=80&dpr=2&w=1200&h=720'
  )
puts "... created #{Planet.count} planets."

puts "Creating Aliens..."
Alien.create!(
  name: 'Jar Jar Binks',
  image_url: 'https://platform.polygon.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/15611710/jjb.0.0.1487693204.jpg?quality=90&strip=all&crop=16.666666666667,0,66.666666666667,100',
  planet: planet
)
Alien.create!(
  name: 'General Grievous',
  image_url: 'https://mir-s3-cdn-cf.behance.net/project_modules/hd/75e94c2004605.560de9d8221e8.jpg',
  planet: planet
)

Alien.create!(
  name: 'Yann',
  image_url: 'https://avatars.githubusercontent.com/u/26819547?v=4',
  planet: planet
)

Alien.create!(
  name: 'E.T.',
  image_url: "https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/12/boneco-ET.jpg?w=1200&h=900&crop=1",
  planet: planet
)

Alien.create!(
  name: 'Chewbacca',
  image_url: 'https://imageio.forbes.com/specials-images/dam/imageserve/958761228/960x0.jpg?format=jpg&width=960',
  planet: planet
)

Alien.create!(
  name: 'Marvin the Martian',
  image_url: 'https://i.pinimg.com/736x/5c/bb/87/5cbb87ead6a3d901fb5ce15c87fd20d3--marvin-the-martian-looney-tunes.jpg',
  planet: planet
)

Alien.create!(
  name: 'Kang and Kodos Johnson',
  image_url: 'https://media1.giphy.com/media/3o6MbeBXxFJhC1OUaQ/giphy.gif',
  planet: planet
)

Alien.create!(
  name: 'Martian Leader',
  image_url: 'https://www.looper.com/img/gallery/the-untold-truth-of-mars-attacks/l-intro-1632752169.jpg',
  planet: planet
)

Alien.create!(
  name: 'Predator',
  image_url: 'https://deadline.com/wp-content/uploads/2020/11/Predator-Creature.jpg?w=1000',
  planet: planet
)

Alien.create!(
  name: 'Xenomorph XX121',
  image_url: 'https://media.wired.co.uk/photos/606db4e0c36e357873e6cd26/4:3/w_1704,h_1278,c_limit/alien_1.jpg',
  planet: planet
)

Alien.create!(
  name: 'Zoidberg',
  image_url: 'https://imgflip.com/s/meme/Futurama-Zoidberg.jpg',
  planet: planet
)

Alien.create!(
  name: 'Mark Zuckerberg',
  image_url: 'https://nypost.com/wp-content/uploads/sites/2/2022/11/mark-zuckerberg-57.jpg',
  planet: planet
)

Alien.create!(
  name: 'Alf',
  image_url: 'https://upload.wikimedia.org/wikipedia/en/8/89/GordonShumway.png',
  planet: planet
)

Alien.create!(
  name: 'MAC',
  image_url: 'https://pyxis.nymag.com/v1/imgs/d56/0a4/8bba1a908cb22ab87b10cbf1db2d938a2f-20110316-friendlyaliens-2macandme.2x.rhorizontal.w700.jpg',
  planet: planet
)
puts "... created #{Alien.count} aliens"


puts "Creating weapons..."
  5.times do
    Weapon.create!(
      name: Faker::Games::DnD.unique.ranged_weapon
    )
  end
puts "... created #{Weapon.count} weapons."
