class EventInformationsController < ApplicationController
  authorize_resource only: %i(show new edit create update destroy)
  before_action :set_event_information, only: [:show, :edit, :update, :destroy]

  # GET /event_informations
  # GET /event_informations.json
  def index
    @event_informations = EventInformation.all
  end

  # GET /event_informations/1
  # GET /event_informations/1.json
  def show
  end

  # GET /event_informations/new
  def new
    @event_information = EventInformation.new
  end

  # GET /event_informations/1/edit
  def edit
  end

  # POST /event_informations
  # POST /event_informations.json
  def create
    @event_information = EventInformation.new(event_information_params)

    respond_to do |format|
      if @event_information.save
        format.html { redirect_to @event_information, notice: 'Event information was successfully created.' }
        format.json { render :show, status: :created, location: @event_information }
      else
        format.html { render :new }
        format.json { render json: @event_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_informations/1
  # PATCH/PUT /event_informations/1.json
  def update
    respond_to do |format|
      if @event_information.update(event_information_params)
        format.html { redirect_to @event_information, notice: 'Event information was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_information }
      else
        format.html { render :edit }
        format.json { render json: @event_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_informations/1
  # DELETE /event_informations/1.json
  def destroy
    @event_information.destroy
    respond_to do |format|
      format.html { redirect_to event_informations_url, notice: 'Event information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_information
      @event_information = EventInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_information_params
      params.require(:event_information).permit(:name, :place, :start_date)
    end
end
