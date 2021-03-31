class SessionSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :subjects
  attributes :id, :user_id, :title, :created_at, :total_time

  def total_time
    instance_options[:total_time]
  end
end
