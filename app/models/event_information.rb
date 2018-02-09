class EventInformation < ApplicationRecord
  has_many :sub_event_informations
  
  def attendee_count
    self.sub_event_informations.map{|info|
      info.attendances.map{|attendance|attendance.user_id}
    }.flatten.uniq.length
  end
end
