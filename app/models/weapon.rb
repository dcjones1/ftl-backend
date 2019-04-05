class Weapon < ApplicationRecord
  has_many :ships, through: :ship_weapons
end
