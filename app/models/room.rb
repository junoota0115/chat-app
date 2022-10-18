class Room < ApplicationRecord

  ## Association
  has_many :room_users  
  has_many :users, through: :room_users
  has_many :messages

  validates :name, presence: true
end
