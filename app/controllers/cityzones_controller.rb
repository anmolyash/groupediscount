class CityzonesController < ApplicationController
  before_action :set_cityzone, only: [:show, :edit, :update, :destroy]

  # GET /cityzones
  # GET /cityzones.json
  def index
    @cityzones = Cityzone.all
  end

  # GET /cityzones/1
  # GET /cityzones/1.json
  def show
  end

  # GET /cityzones/new
  def new
    @cityzone = Cityzone.new
  end

  # GET /cityzones/1/edit
  def edit
  end

  # POST /cityzones
  # POST /cityzones.json
  def create
    @cityzone = Cityzone.new(cityzone_params)

    respond_to do |format|
      if @cityzone.save
        format.html { redirect_to @cityzone, notice: 'Cityzone was successfully created.' }
        format.json { render :show, status: :created, location: @cityzone }
      else
        format.html { render :new }
        format.json { render json: @cityzone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cityzones/1
  # PATCH/PUT /cityzones/1.json
  def update
    respond_to do |format|
      if @cityzone.update(cityzone_params)
        format.html { redirect_to @cityzone, notice: 'Cityzone was successfully updated.' }
        format.json { render :show, status: :ok, location: @cityzone }
      else
        format.html { render :edit }
        format.json { render json: @cityzone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cityzones/1
  # DELETE /cityzones/1.json
  def destroy
    @cityzone.destroy
    respond_to do |format|
      format.html { redirect_to cityzones_url, notice: 'Cityzone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cityzone
      @cityzone = Cityzone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cityzone_params
      params.require(:cityzone).permit(:cityzone, :city_id)
    end
end
