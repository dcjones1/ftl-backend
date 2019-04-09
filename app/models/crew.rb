class Crew < ApplicationRecord
  has_many :crew_ships
  has_many :ships, through: :crew_ships
end
