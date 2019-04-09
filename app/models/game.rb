class Game < ApplicationRecord
  belongs_to :player
  has_many :levels
  has_many :game_ships
  has_many :ships, through: :game_ships
end
