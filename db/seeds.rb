# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

l = Location.create(name: "New York City")

s = l.meteo_stations.create(name: "Station one")
s.recordings.create(temp: 34, status: "rainy")
s.recordings.create(temp: 30, status: "rainy")
s.recordings.create(temp: 28, status: "cloudy")

m = l.meteo_stations.create(name: "Station two")
m.recordings.create(temp: 22, status: "sunny")

l = Location.create(name: "Lviv")
s = l.meteo_stations.create(name: "Station lviv one")
s.recordings.create(temp: 34, status: "rainy")
s.recordings.create(temp: 30, status: "rainy")
s.recordings.create(temp: 28, status: "cloudy")

m = l.meteo_stations.create(name: "Station lviv two")
m.recordings.create(temp: 22, status: "sunny")
m.recordings.create(temp: 42, status: "snowy")
m.recordings.create(temp: 19, status: "cloudy")
