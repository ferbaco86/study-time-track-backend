class UserSerializer < ActiveModel::Serializer
  has_many :sessions
  attributes :id, :name
end
