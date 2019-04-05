class Crew < ApplicationRecord
  has_many :ships, through: :crew_ships
end
