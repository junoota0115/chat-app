class RoomUser < ApplicationRecord
  ## Association
  belongs_to :room
  belongs_to :user
end
