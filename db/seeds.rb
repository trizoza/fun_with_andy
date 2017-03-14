# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Sponsor.delete_all
Player.delete_all
Team.delete_all

bad_one = Team.create({name: "Slithering"})
good_one = Team.create({name: "Gryffindor"})

bp = Sponsor.create({name: "Brittish Petrol"})
shell = Sponsor.create({name: "Shell"})
esso = Sponsor.create({name: "Esso"})

harry = Player.create({name: "Harry", team_id: good_one.id})
ron = Player.create({name: "Ron", team_id: bad_one.id})
hermione = Player.create({name: "Hermione", team_id: good_one.id})

Sponsorship.create({player: harry, sponsor: bp})
Sponsorship.create({player: harry, sponsor: shell})
Sponsorship.create({player: harry, sponsor: esso})
Sponsorship.create({player: ron, sponsor: esso})
Sponsorship.create({player: hermione, sponsor: bp})