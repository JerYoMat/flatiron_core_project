class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :school_relationship
end
