class Ship < ApplicationRecord
  has_many :games, through: :game_ships
  has_many :crew, through: :crew_ships
  has_many :weapons, through: :ship_weapons
  has_many :levels, through: :level_ships
end
