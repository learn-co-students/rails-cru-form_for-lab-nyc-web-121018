# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.create(name: "boogie down")
Song.create(name: "boogie up")
Song.create(name: "All night long")
Song.create(name: "All night short")
Song.create(name: "Jazzy Christmas")

Artist.create(name: "Mr Jazz")
Artist.create(name: "Mr Rock")
Artist.create(name: "The Boo Boos")
Artist.create(name: "The Yeah Yeahs")
Artist.create(name: "The doo wops")
Artist.create(name: "Rake! The Experience")

Genre.create(name: "Rock")
Genre.create(name: "Jazz")
Genre.create(name: "Funk")
