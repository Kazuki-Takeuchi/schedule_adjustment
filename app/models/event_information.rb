class EventInformation < ApplicationRecord
  has_many :sub_event_informations
  
  def attendee_count
    self.sub_event_informations.map{|info| info.attendances.count}.sum
  end
end
