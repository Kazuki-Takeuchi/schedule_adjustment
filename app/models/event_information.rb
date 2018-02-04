class EventInformation < ApplicationRecord
  has_many :sub_event_informations, dependent: :destroy
end
