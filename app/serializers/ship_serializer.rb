class ShipSerializer < ActiveModel::Serializer
  attributes :id, :name, :health
  has_many :weapons
  has_many :levels
end
