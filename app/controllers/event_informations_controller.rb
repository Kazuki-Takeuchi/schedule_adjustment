class EventInformationsController < ApplicationController
  authorize_resource only: %i(show new edit create update destroy)
  before_action :set_event_information, only: [:show, :edit, :update, :destroy]

  def index
    @event_informations = EventInformation.all
  end

  def show
  end

  def new
    @event_information = EventInformation.new
  end

  def edit
  end

  def create
    @event_information = EventInformation.new(event_information_params)

    respond_to do |format|
      if @event_information.save
        format.html { redirect_to @event_information, notice: 'Event information was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @event_information.update(event_information_params)
        format.html { redirect_to @event_information, notice: 'Event information was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @event_information.destroy
    respond_to do |format|
      format.html { redirect_to event_informations_url, notice: 'Event information was successfully destroyed.' }
    end
  end

  private
    def set_event_information
      @event_information = EventInformation.find(params[:id])
    end

    def event_information_params
      params.require(:event_information).permit(:name, :place, :start_date)
    end
end
