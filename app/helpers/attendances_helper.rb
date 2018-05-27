module AttendancesHelper
  def get_attend_state_id(current_user, sub_event_information)
    "attend_state_#{current_user.id}_#{sub_event_information.id}"
  end

  def get_attend_tag_id(current_user, sub_event_information)
    "attend_#{current_user.id}_#{sub_event_information.id}"
  end

  def get_attendance_count_id(current_user, sub_event_information)
    "attendance_count_#{current_user.id}_#{sub_event_information.id}"
  end
end
