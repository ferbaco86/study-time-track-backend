class Session < ApplicationRecord
  belongs_to :user
  has_many :subjects, dependent: :destroy

  def self.longest_session
    joins(:subjects).select('sessions.*,SUM(CAST((subjects.time) AS FLOAT)) AS total_time').group('sessions.id').order('total_time DESC')
  end
end
