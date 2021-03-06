class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id, class_name: 'Event'
  has_many :attendance_events, foreign_key: 'attendee_id'
  has_many :attended_events, through: :attendance_events

  validates :name, presence: true
end
