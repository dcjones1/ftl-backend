class LevelSerializer < ActiveModel::Serializer
  attributes :id, :title, :story, :choices, :consequence
  has_many :ships
  has_many :weapons, through: :ships
end
