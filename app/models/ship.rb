class Ship < ApplicationRecord
  has_many :game_ships
  has_many :games, through: :game_ships
  has_many :crew_ships
  has_many :crew, through: :crew_ships
  has_many :ship_weapons
  has_many :weapons, through: :ship_weapons
  has_many :level_ships
  has_many :levels, through: :level_ships
end
