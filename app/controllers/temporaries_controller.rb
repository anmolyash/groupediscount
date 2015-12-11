class TemporariesController < ApplicationController
  before_action :set_temporary, only: [:show, :edit, :update, :destroy]

  # GET /temporaries
  # GET /temporaries.json
  def index
  @proj=Project.includes(:builder).all
  render json: @proj
  end

  # GET /temporaries/1
  # GET /temporaries/1.json
  def show
  end

  # GET /temporaries/new
  def new
    @temporary = Temporary.new
  end

  # GET /temporaries/1/edit
  def edit
  end

  # POST /temporaries
  # POST /temporaries.json
  def create
    @temporary = Temporary.new(temporary_params)

    respond_to do |format|
      if @temporary.save
        format.html { redirect_to @temporary, notice: 'Temporary was successfully created.' }
        format.json { render :show, status: :created, location: @temporary }
      else
        format.html { render :new }
        format.json { render json: @temporary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temporaries/1
  # PATCH/PUT /temporaries/1.json
  def update
    respond_to do |format|
      if @temporary.update(temporary_params)
        format.html { redirect_to @temporary, notice: 'Temporary was successfully updated.' }
        format.json { render :show, status: :ok, location: @temporary }
      else
        format.html { render :edit }
        format.json { render json: @temporary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temporaries/1
  # DELETE /temporaries/1.json
  def destroy
    @temporary.destroy
    respond_to do |format|
      format.html { redirect_to temporaries_url, notice: 'Temporary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temporary
      @temporary = Temporary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temporary_params
      params[:temporary]
    end
end
