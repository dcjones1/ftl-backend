class ShipWeapon < ApplicationRecord
  belongs_to :ship
  belongs_to :weapon
end
