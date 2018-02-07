class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :sub_event_information
end
