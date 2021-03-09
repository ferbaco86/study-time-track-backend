class SessionSerializer < ActiveModel::Serializer
  has_many :subjects
  attributes :id, :user_id, :title
end
