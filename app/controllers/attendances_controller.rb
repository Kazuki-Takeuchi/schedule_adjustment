class AttendancesController < ApplicationController
  authorize_resource only: %i(destroy)
  before_action :set_sub_event_information, only: %i(attend destroy)

  def attend
    if current_user
      @attendance = @sub_event_information.attendances.build(user: current_user)
    end

    if @attendance.save
      respond_to do |format|
        format.js
      end
    else
      render :js => "alert('参加登録失敗');"
    end
  end

  def destroy
    @attendance = @sub_event_information.attendances.find_by(user: current_user)
    @attendance.destroy!
    respond_to do |format|
      format.js
    end
end

  private
    def set_sub_event_information
      @event_information = EventInformation.find(params[:event_information_id])
      @sub_event_information = @event_information.sub_event_informations.find(params[:sub_event_information_id])
    end
end
