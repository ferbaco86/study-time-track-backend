class Session < ApplicationRecord
  belongs_to :user
  has_many :subjects, dependent: :destroy
end
