# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Users
  User.create(name: "Pablo", email: "pablo@pablo.com", password: "olbap", password_confirmation: "olbap")
  User.create(name: "Dina", email: "dina@dina.com", password: "anid", password_confirmation: "anid")
  User.create(name: "Aba", email: "aba@aba.com", password: "aba", password_confirmation: "aba") 
  User.create(name: "Naveen", email: "naveen@naveen.com", password: "neevan", password_confirmation: "neevan")


#Genres

	alternative_rock = Genre.create(name: 'Alternative Rock')
 	ambient = Genre.create(name: 'Ambient')
 	classical = Genre.create(name: 'Classical')
 	country = Genre.create(name: 'Country')
 	dance = Genre.create(name: 'Dance')
 	deep_house = Genre.create(name: 'Deep House')
 	disco = Genre.create(name: 'Disco')
 	drum_and_bass = Genre.create(name: 'Drum & Bass')
 	dubstep = Genre.create(name: 'Dubstep')
 	electro = Genre.create(name: 'Electro')
 	electronic = Genre.create(name: 'Electronic')
 	folk = Genre.create(name: 'Folk')
 	hardcore_techno = Genre.create(name: 'Hardcore Techno')
 	hip_hop = Genre.create(name: 'Hip Hop')
 	house = Genre.create(name: 'House')
 	indie_rock = Genre.create(name: 'Indie Rock')
 	jazz = Genre.create(name: 'Jazz')
 	latin = Genre.create(name: 'Latin')
 	metal = Genre.create(name: 'Metal')
 	minimal_techno = Genre.create(name: 'Minimal Techno')
 	piano = Genre.create(name: 'Piano')
 	pop = Genre.create(name: 'Pop')
 	progressive_house = Genre.create(name: 'Progressive House')
 	punk = Genre.create(name: 'Punk')
 	r_and_b = Genre.create(name: 'R&B')
 	rap = Genre.create(name: 'Rap')	
 	reggae = Genre.create(name: 'Reggae')
 	rock = Genre.create(name: 'Rock')
 	singer_songwriter = Genre.create(name: 'Singer-Songwriter')
 	soul = Genre.create(name: 'Soul')
 	tech_house = Genre.create(name: 'Tech House')
 	techno = Genre.create(name: 'Techno')
 	trance = Genre.create(name: 'Tranch')
 	trap = Genre.create(name: 'Trap')
 	trip_hop = Genre.create(name: 'Trop Hop')
 	world = Genre.create(name: 'World')

# Songs

   Song.create(title: "song1", artist: "artist1", image: "image_url1", mp3file: "mp3_url1", genre_id: pop.id)
   Song.create(title: "song2", artist: "artist2", image: "image_url2", mp3file: "mp3_url2", genre_id: world.id)
   Song.create(title: "song3", artist: "artist3", image: "image_url3", mp3file: "mp3_url3", genre_id: world.id)
   Song.create(title: "song4", artist: "artist4", image: "image_url4", mp3file: "mp3_url4", genre_id: piano.id)


   
