# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Player.destroy_all
Game.destroy_all
Weapon.destroy_all
Ship.destroy_all
Level.destroy_all
ShipWeapon.destroy_all
LevelShip.destroy_all
GameShip.destroy_all

play = Player.create(name: 'Chris')
game1 = Game.create(name: 'first go', playing: true, player: play)
level = Level.create(story: 'stuff', choices: 'pick between a and b', consequence: 'good', game: game1)
weap = Weapon.create(name: 'laser', shots: '2', effect: 'none')
ship = Ship.create(name: 'enemy', health: '15')

ship.weapons << weap
level.ships << ship
game1.ships << ship
# ShipWeapon.create(ship, weap)
# LevelShip.create(level, ship)
# GameShip.create(game1, ship)
