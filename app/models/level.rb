class Level < ApplicationRecord
  has_many :ships, through: :level_ships
  belongs_to :game
end
