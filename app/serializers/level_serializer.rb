class LevelSerializer < ActiveModel::Serializer
  attributes :id, :title, :story, :choices, :consequence
end
