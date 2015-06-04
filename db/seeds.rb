# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.delete_all
Album.delete_all
Genre.delete_all

s1 = Song.create(name: 'Thriller', price: 1)
s2 = Song.create(name: 'Billie-Jean', price: 2)
s3 = Song.create(name: 'Because I Got High', price: 45)
s4 = Song.create(name: 'Song 2', price: 2)

a1 = Album.create(name: 'Now That What I call albums')
a2 = Album.create(name: 'Zero Dinero')
a3 = Album.create(name: 'Punk in Drublic')

g1 = Genre.create(name: 'Norwegian Acid Funk')
g2 = Genre.create(name: 'Industrial Doom Jazz')
g3 = Genre.create(name: 'Mexican Flavella Rap')


a1.songs << s1 << s2
a2.songs << s3
a3.songs << s4

g1.albums << a1
g2.albums << a2 << a3

s1.album_songs.create(song_id: s1.id)
a3.album_songs.create(album_id: a3.id)



