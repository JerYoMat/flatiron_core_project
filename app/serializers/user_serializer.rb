class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :school_relationship
end
