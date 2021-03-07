class User < ApplicationRecord
  has_many :sessions, foreign_key: 'user_id', dependent: :destroy
  
end
