class CreateAttendanceEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :attendance_events do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true 

      t.timestamps
    end
  end
end
