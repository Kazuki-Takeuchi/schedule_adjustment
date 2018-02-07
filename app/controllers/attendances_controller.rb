class AttendancesController < ApplicationController
  before_action :set_sub_event_information, only: %i(attend destroy)

  def attend
    @attendance = @sub_event_information.attendances.build(user: current_user)
    if @attendance.save
      render :js => "alert('参加登録成功');"
    else
      render :js => "alert('参加登録失敗');"
    end
  end

  def destroy
    @attendance = @sub_event_information.attendances.find_by(user: current_user)
    @attendance.destroy!
    render :js => "alert('不参加登録成功');"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_event_information
      @sub_event_information = SubEventInformation.find(params[:sub_event_information_id])
    end
end
