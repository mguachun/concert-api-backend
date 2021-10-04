# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Concert.destroy_all
User.destroy_all

concerts = Concert.create!( [{ artist: "Surfbort", concert_title: "Temporary Tattoo", venue: "Baby's Alright", date: "9/10/21", genre: "Rock", comment:"Great venue for moshing", user_id: 1 },
{ artist: "Thurston Moore", concert_title: "By The Fire", venue:"Le Poisson Rouge", date:"9/12/21", genre:"Rock", comment:"Intimate performance with plenty of standing space", user_id:2},
{ artist: "Angel Olsen", concert_title:"Outside Lands Music Festival", venue: "Golden Gate Park", date: "10/30/21", genre: "Indie Rock", comment:"Played songs from newest album", user_id:3},
{ artist: "Idles", concert_title: "Terminal 5 Presents:", venue: "Terminal 5", date:"10/16/21", genre: "Punk", comment:"Venue too large but amazing performance", user_id:1},
{ artist: "Princess Nokia", concert_title: "Irving Plaza Presents:", venue: "Irving Plaza", date: "10/24/21", genre:"Hip-Hop" , comment:"PN is very interactive with her audience" , user_id: 2},
{ artist: "Chief Keef", concert_title: "Thotbreaker Tour", venue: "Pier 17", date:"10/7/21" , genre: "Hip-Hop", comment: "Covid friendly outdoor venue with great sites of the water", user_id: 2},
{ artist: "Doja Cat", concert_title: "iHeart Radio Jingle Ball", venue:"Madison Square Garden", date:"12/10/21", genre: "R&B", comment:"So many outfit changes, worth the price for the theatrics alone", user_id: 4},
{ artist: "Jacques Greene", concert_title: "Elsewhere Presents", venue: "Elsewhere-The Hall", date:"10/9/21", genre: "Indie Dance", comment:"Such a fun night, and such a talented guy!" , user_id: 1 },
{ artist: "The Struts", concert_title: "Irving Plaza Presents", venue: "Irving Plaza", date: "10/8/21", genre:"Rock", comment: "They sound like Queen!", user_id: 3},
{ artist: "Caroline Rose", concert_title: "Superstar", venue: "Music Hall of Williamsburg", date: "10/14/21", genre: "Indie Pop", comment: "Caroline Rose put on an amazing and energetic show. 5/5", user_id: 5},
{ artist: "Judas Priest", concert_title: "Firepower", venue:"Prudential Center", date: "10/27/21", genre: "Heavy Metal", comment: "Can still perform like they did in their heyday", user_id: 3},
{ artist: "Daughters", concert_title: "LPR Presents:", venue: "Le Poisson Rouge", date: "1/26/22", genre: "Metal", comment: "Second time seeing them and they deliver every time", user_id: 4},
{ artist: "Lorde", concert_title: "The Solar Power Tour", venue: "Radio City Music Hall", date: "4/18/22", genre: "Pop", comment: "Finally get to see her after waiting 4 years!!", user_id: 2},
{ artist: "Japanese Breakfast", concert_title: "Brooklyn Steel Presents", venue: "Brooklyn Steel", date: "10/16/21", genre: "Great Wave", comment: "Michelle Zauner is super talented.", user_id: 5},
{ artist: "Orville Peck", concert_title: "Madison Square Garden Presents", venue: "Madison Square Garden", date: "10/30/21", genre: "Alternative Country", comment: "He has such a positive energy and really inspired the audience.", user_id: 1},
{ artist: "Kim Petras", concert_title: "Stone Pony Presents", venue: "Stone Pony", date: "10/9/21", genre: "Pop", comment: "Phenomenal, even though it was the day after her vocal strain she pulled it out the bag and nailed all the high notes", user_id: 4},
{ artist: "joji", concert_title: "Joji Presents Nectar", venue: "Terminal 5", date: "11/12/21", genre: "Indie", comment: "I cannot explain the happiness i felt managing to witness this from the barrier, sick peformer everything i imagined and a bit more", user_id: 3},
{ artist: "100 gecs", concert_title: "1000 gecs Tour 2021", venue: "Terminal 5", date: "12/11/21", genre: "Experimental Pop", comment: "It felt out of place seeing them in a big venue", user_id: 5}])



users = User.create!([{ }])