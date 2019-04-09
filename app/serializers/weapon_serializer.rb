class WeaponSerializer < ActiveModel::Serializer
  attributes :id, :name, :shots, :effect
end
