class SubEventInformation < ApplicationRecord
  belongs_to :event_information
  has_many :attendances, dependent: :destroy

  validates :url, { allow_blank: true, format: /\A#{URI::regexp(%w(http https))}\z/ }

  def get_only_start_time
    self.start_time.strftime("%H:%M:%S")
  end
end
