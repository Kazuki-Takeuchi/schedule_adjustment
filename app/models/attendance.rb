class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :sub_event_information

  validates :user_id, uniqueness: {scope: :sub_event_information_id}
end
