module SubEventInformationsHelper
  def get_place_link(sub_event_information)
    if sub_event_information.url.present?
      link_to sub_event_information.place, sub_event_information.url, target: ["_blank"]
    else
      sub_event_information.place
    end
  end
end
