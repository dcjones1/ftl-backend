class WeaponSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :shots, :effect
end
