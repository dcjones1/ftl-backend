class Level < ApplicationRecord
  has_many :level_ships
  has_many :ships, through: :level_ships
  belongs_to :game
end
