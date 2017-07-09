# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Song.destroy_all
Artist.destroy_all

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
artist1 = Artist.create!( { name: "Kendrick Lamar", song: "HUMBLE"} )
artist2 = Artist.create!( { name: "A$AP", song: "Everyday"} )
artist3 = Artist.create!( { name: "Jay-Z", song: "99 Problems"} )
artist4 = Artist.create!( { name: "Bob Dylan", song: "Huricane"} )


=begin
Song.create!([
  { name_song: "HUMBLE", artist_name: "Kendrick Lamar", duration: 2.57, genre: "Hip Hop", artist: artist1 },
  { name_song: "Everyday", artist_name: "A$AP", duration: 4.21, genre: "Hip Hop", artist: artist2 },
  { name_song: "99 Problems", artist_name: "Jay-Z", duration: 3.54 , genre: "Hip Hop", artist: artist3 },
  { name_song: "Like a Rolling Stone", artist_name: "Bob Dylan", duration: 6.02 , genre: "Blues", artist: artist4 }
],  artist: artist)
=end


song1 = Song.create!( { name_song: "HUMBLE", artist_name: "Kendrick Lamar", duration: 2.57, genre: "Hip Hop", artist: artist1} )
song2 = Song.create!( { name_song: "Everyday", artist_name: "A$AP", duration: 4.21, genre: "Hip Hop", artist: artist2} )
song3 = Song.create!( { name_song: "99 Problems", artist_name: "Jay-Z", duration: 3.54 , genre: "Hip Hop", artist: artist3})
song4 = Song.create!( { name_song: "Like a Rolling Stone", artist_name: "Bob Dylan",duration: 6.02 , genre: "Blues",  artist: artist4})
