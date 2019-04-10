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
weap = Weapon.create(name: 'laser', shots: '2', effect: 'none')
ship = Ship.create(name: 'enemy', health: '15')

level1 = Level.create(
  title: 'Outpost Opportunity',
  story: 'You arrive at an abandoned outpost with no signs of life. What should you do?',
  choices: ['Look for signs of life.', 'Shoot at it for fun.', 'Leave.'],
  consequence: ['You and your crew search the ship. You find some parts to make repairs as well as some spare scrap.', 'The outpost explodes, damaging your ship. Reckless.', 'The safe choice. As you leave, you hear explosions and the sounds of ships in battle.'],
  game: game1
)
level2 = Level.create(
  title: 'Strange Satellite',
  story: 'Your crew reports a satellite in the vicinity of the ship and inching closer.',
  choices: ['Send a friendly message.', 'Blow it up.', 'Full reverse.'],
  consequence: ['The other crew responds, you trade them some fuel for scrap and repairs to your ship.', 'The resulting shrapnel blows a hole in the side of your ship. You seal off the affected area.', 'Lasers graze by your ship as you speed off, but not hit the mark.'],
  game: game1
)
level3 = Level.create(
  title: 'Hostages!',
  story: 'A pirate vessel appears to be looting a disabled ship ahead. As you approach, you see they have the crew from the other ship held hostage.',
  choices: ['Attack the crew and try to save the hostages.', 'Attack without regard for the hostages.', 'Mind your own business.'],
  consequence: ['You succeed in saving them. The grateful crew offers their help and remaining resources', 'They turn and attack. You are outgunned and make a hasty retreat, but not before taking damage.', 'You continue your journey.'],
  game: game1
)

ship.weapons << weap
level1.ships << ship
level2.ships << ship
level3.ships << ship
# level4.ships << ship
game1.ships << ship
# ShipWeapon.create(ship, weap)
# LevelShip.create(level, ship)
# GameShip.create(game1, ship)
