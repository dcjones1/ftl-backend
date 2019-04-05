class LevelSerializer < ActiveModel::Serializer
  attributes :id, :story, :choices, :consequence
end
