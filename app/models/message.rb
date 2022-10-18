class Message < ApplicationRecord
  #Association
  belongs_to :room
  belongs_to :user
end
