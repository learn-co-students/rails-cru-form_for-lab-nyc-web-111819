# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.destroy_all
Genre.destroy_all
Song.destroy_all

a1 = Artist.create(name: "Billy Joe", bio: "still singing")
a2 = Artist.create(name: "Bruno Mars", bio: "already a billionare")
a3 = Artist.create(name: "Taylor Swift", bio: "london boys")
a4 = Artist.create(name: "James Arthur", bio: "romanticize everything")

Genre.create(name: "Pop")
Genre.create(name: "R&B")
Genre.create(name: "Jazz")
Genre.create(name: "Classic")

Song.create(name: "24K Magic", artist: a1, genre: Genre.all.sample)
Song.create(name: "24K Magic", artist: a2, genre: Genre.all.sample)
Song.create(name: "24K Magic", artist: a1, genre: Genre.all.sample)


