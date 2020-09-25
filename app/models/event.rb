class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  has_many :attendance_events, foreign_key: :attended_event_id
  has_many :attendees, through: :attendance_events, source: :attendee
end
