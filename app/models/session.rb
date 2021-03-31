class Session < ApplicationRecord
  belongs_to :user
  has_many :subjects, dependent: :destroy

  scope :subjects_total_time, lambda { |user_id|
                                joins(:subjects)
                                  .where('user_id= ?', user_id)
                                  .select('sessions.*,SUM(subjects.time) AS total_time')
                                  .group('sessions.id')
                              }
end
