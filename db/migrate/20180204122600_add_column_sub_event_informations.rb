class AddColumnSubEventInformations < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_event_informations, :event_information_id, :integer
  end
end
