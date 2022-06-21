class SurvivorSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :last_latitude, :last_longitude, :abduction_flags
end
