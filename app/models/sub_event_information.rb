class SubEventInformation < ApplicationRecord
  belongs_to :event_information

  def get_only_start_time
    self.start_time.strftime("%H:%M:%S")
  end
end
