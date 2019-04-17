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

ship1 = Ship.create(name: 'enemy', health: '12', pilotLevel: 1, engineLevel: 1, shields: 1)
weap1 = Weapon.create(name: 'laser', shots: '1', effect: 'none')
level1 = Level.create(
  title: 'Outpost Opportunity',
  story: 'You arrive at an abandoned outpost with no signs of life. What should you do?',
  choices: ['Look for signs of life.', 'Shoot at it for fun.', 'Leave.'],
  consequence: ['You and your crew search the ship. You find some parts to make repairs as well as some spare scrap.', 'The outpost explodes, damaging your ship. Reckless.', 'The safe choice. As you leave, you hear explosions and the sounds of ships in battle.'],
  game: game1
)


ship2 = Ship.create(name: 'enemy', health: '14', pilotLevel: 1, engineLevel: 2, shields: 1)
weap2 = Weapon.create(name: 'laser', shots: '2', effect: 'none')
level2 = Level.create(
  title: 'Strange Satellite',
  story: 'Your crew reports a satellite in the vicinity of the ship and inching closer.',
  choices: ['Send a friendly message.', 'Blow it up.', 'Full reverse.'],
  consequence: ['The other crew responds, you trade them some fuel for scrap and repairs to your ship.', 'The resulting shrapnel blows a hole in the side of your ship. You seal off the affected area.', 'Lasers graze by your ship as you speed off, but not hit the mark.'],
  game: game1
)


ship3 = Ship.create(name: 'enemy', health: '18', pilotLevel: 1, engineLevel: 2, shields: 2)
weap3 = Weapon.create(name: 'laser', shots: '2', effect: 'none')
weap31 = Weapon.create(name: 'missile', shots: '1', effect: 'none')
level3 = Level.create(
  title: 'Hostages!',
  story: 'A pirate vessel appears to be looting a disabled ship ahead. As you approach, you see they have the crew from the other ship held hostage.',
  choices: ['Attack the crew and try to save the hostages.', 'Attack without regard for the hostages.', 'Mind your own business.'],
  consequence: ['You succeed in saving them. The grateful crew offers their help and remaining resources', 'They turn and attack. You are outgunned and make a hasty retreat, but not before taking damage.', 'You continue your journey.'],
  game: game1
)


ship4 = Ship.create(name: 'enemy', health: '18', pilotLevel: 2, engineLevel: 2, shields: 2)
weap4 = Weapon.create(name: 'laser', shots: '3', effect: 'none')
weap41 = Weapon.create(name: 'missile', shots: '1', effect: 'none')
level4 = Level.create(
  title: 'Level 4',
  story: 'A pirate vessel appears to be looting a disabled ship ahead. As you approach, you see they have the crew from the other ship held hostage.',
  choices: ['Attack the crew and try to save the hostages.', 'Attack without regard for the hostages.', 'Mind your own business.'],
  consequence: ['You succeed in saving them. The grateful crew offers their help and remaining resources', 'They turn and attack. You are outgunned and make a hasty retreat, but not before taking damage.', 'You continue your journey.'],
  game: game1
)


ship5 = Ship.create(name: 'enemy', health: '30', pilotLevel: 3, engineLevel: 3, shields: 3)
weap5 = Weapon.create(name: 'laser', shots: '4', effect: 'none')
weap51 = Weapon.create(name: 'missile', shots: '3', effect: 'none')
level5 = Level.create(
  title: 'Level 5',
  story: 'A pirate vessel appears to be looting a disabled ship ahead. As you approach, you see they have the crew from the other ship held hostage.',
  choices: ['Attack the crew and try to save the hostages.', 'Attack without regard for the hostages.', 'Mind your own business.'],
  consequence: ['You succeed in saving them. The grateful crew offers their help and remaining resources', 'They turn and attack. You are outgunned and make a hasty retreat, but not before taking damage.', 'You continue your journey.'],
  game: game1
)


ship1.weapons << weap1
ship2.weapons << weap2
ship3.weapons << weap3
ship3.weapons << weap31
ship4.weapons << weap4
ship4.weapons << weap41
ship5.weapons << weap5
ship5.weapons << weap51
level1.ships << ship1
level2.ships << ship2
level3.ships << ship3
level4.ships << ship4
level5.ships << ship5
# level4.ships << ship
game1.ships << ship1
game1.ships << ship2
game1.ships << ship3
game1.ships << ship4
game1.ships << ship5
