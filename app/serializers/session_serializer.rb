class SessionSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :subjects
  attributes :id, :user_id, :title, :created_at
end
