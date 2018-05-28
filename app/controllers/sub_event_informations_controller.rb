class SubEventInformationsController < ApplicationController
  authorize_resource only: %i(show new edit create update destroy)
  before_action :set_event_information, only: %i(show new edit create edit update destroy)
  before_action :set_sub_event_information, only: %i(show edit update destroy)

  def show
    @attendances = @sub_event_information.attendances.includes(:user).order("users.graduation_year").page(params[:page])
  end

  def new
    @sub_event_information = @event_information.sub_event_informations.build
  end

  def edit
  end

  def create
    @sub_event_information = @event_information.sub_event_informations.build(sub_event_information_params)

    respond_to do |format|
      if @sub_event_information.save
        format.html { redirect_to @event_information, notice: 'Sub event information was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @sub_event_information.update(sub_event_information_params)
        format.html { redirect_to @event_information, notice: 'Sub event information was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @sub_event_information.destroy
    respond_to do |format|
      format.html { redirect_to @event_information, notice: 'Sub event information was successfully destroyed.' }
    end
  end

  private
    def set_event_information
      @event_information = EventInformation.find(params[:event_information_id])
    end
    def set_sub_event_information
      @sub_event_information = @event_information.sub_event_informations.find(params[:id])
    end

    def sub_event_information_params
      params.require(:sub_event_information).permit(:name, :place, :url, :start_time, :price ,:event_information_id)
    end
end
