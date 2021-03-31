class Session < ApplicationRecord
  belongs_to :user
  has_many :subjects, dependent: :destroy

  scope :subjects_total_time, ->(user_id) { joins(:subjects)
    .where("user_id= ?", user_id)
    .select('sessions.*,SUM(CAST((subjects.time) AS FLOAT)) AS total_time')
    .group('sessions.id') }
    #.order('total_time DESC').first
end