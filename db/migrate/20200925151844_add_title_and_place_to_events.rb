class AddTitleAndPlaceToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :title, :text
    add_column :events, :place, :text
  end
end
