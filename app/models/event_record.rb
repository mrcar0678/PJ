class EventRecord < ApplicationRecord
  validates :event_id, uniqueness: true
end
