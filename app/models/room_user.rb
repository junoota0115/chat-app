class RoomUser < ApplicationRecord
  ## Association
belong_to :user
belong_to :room
end
