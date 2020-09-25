class AddForeignKeyToAttendanceEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :attendance_events, :attendee_id, :integer
    add_column :attendance_events, :attended_event_id, :integer
  end
end
