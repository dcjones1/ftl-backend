class ShipSerializer < ActiveModel::Serializer
  attributes :id, :name, :health, :pilotLevel, :engineLevel, :shields
  has_many :weapons
  has_many :levels
end
