class CrewSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :role, :skill, :health
end
