myA = Artist.create(name: "My Artist", bio: "My artist bio")
lady_gaga = Artist.create(name: "Lady Gaga", bio: "Love is like a brick. You can build a house, or you can sink a dead body.")
radiohead = Artist.create(name: "Radiohead", bio: "And I know I'm paranoid and neurotic, I've made a career out of it.")
st_vincent = Artist.create(name: "St Vincent", bio: "I always looked at any instrument as just a tool, an expressive voice to write with.")


myG = Genre.create(name: "My Genre")
pop = Genre.create(name: "Pop")
rock = Genre.create(name: "Rock")
eletro = Genre.create(name: "Eletro")


Song.create(name: "My Song", artist_id: myA.id, genre_id: myG.id)
Song.create(name: "Poker Face", artist_id: lady_gaga.id, genre_id: pop.id)
Song.create(name: "Judas", artist_id: lady_gaga.id, genre_id: eletro.id)
Song.create(name: "Kid A", artist_id: radiohead.id, genre_id: eletro.id)
Song.create(name: "The Bends", artist_id: radiohead.id, genre_id: rock.id)
Song.create(name: "New York", artist_id: st_vincent.id, genre_id: pop.id)
Song.create(name: "Birth In Reverse", artist_id: st_vincent.id, genre_id: rock.id)
Song.create(name: "Digital Witness", artist_id: st_vincent.id, genre_id: eletro.id)
