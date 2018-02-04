class CreateSubEventInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_event_informations do |t|
      t.string :name
      t.string :place
      t.string :url
      t.time :start_time
      t.integer :price

      t.timestamps
    end
  end
end
