class Game < ApplicationRecord
  belongs_to :player
  has_many :levels
  has_many :ships, through: :game_ships 
end
