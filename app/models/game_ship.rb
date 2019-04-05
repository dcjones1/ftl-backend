class GameShip < ApplicationRecord
  belongs_to :game
  belongs_to :ship
end
