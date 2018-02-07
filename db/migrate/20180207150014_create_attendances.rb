class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.integer :sub_event_information_id

      t.timestamps
    end
  end
end
