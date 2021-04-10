class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :session_id, :name, :time, :created_at
end
