class Subject < ApplicationRecord
  belongs_to :session
  scope :top_5_studied, lambda { |user_id|
                          joins(:session)
                            .where('user_id= ?', user_id)
                            .group('subjects.id')
                            .order('time DESC NULLS LAST')
                            .first(5)
                        }

  validates :name, presence: true
  validates :time, presence: true
end
