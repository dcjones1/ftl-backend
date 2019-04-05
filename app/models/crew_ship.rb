class CrewShip < ApplicationRecord
  belongs_to :crew
  belongs_to :ship
end
