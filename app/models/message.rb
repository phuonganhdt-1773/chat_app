class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :room
end
