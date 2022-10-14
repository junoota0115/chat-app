class Room < ApplicationRecord

  ## Association
has_many :users, through: :room_users
has_many :rooms_users 
end
