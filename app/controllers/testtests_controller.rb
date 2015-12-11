class TesttestsController < ApplicationController
  before_action :set_testtest, only: [:show, :edit, :update, :destroy]

  # GET /testtests
  # GET /testtests.json
  def index
    @testtests = Testtest.all
  end

  # GET /testtests/1
  # GET /testtests/1.json
  def show
  end

  # GET /testtests/new
  def new
    @testtest = Testtest.new
  end

  # GET /testtests/1/edit
  def edit
  end

  # POST /testtests
  # POST /testtests.json
  def create
    @testtest = Testtest.new(testtest_params)

    respond_to do |format|
      if @testtest.save
        format.html { redirect_to @testtest, notice: 'Testtest was successfully created.' }
        format.json { render :show, status: :created, location: @testtest }
      else
        format.html { render :new }
        format.json { render json: @testtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testtests/1
  # PATCH/PUT /testtests/1.json
  def update
    respond_to do |format|
      if @testtest.update(testtest_params)
        format.html { redirect_to @testtest, notice: 'Testtest was successfully updated.' }
        format.json { render :show, status: :ok, location: @testtest }
      else
        format.html { render :edit }
        format.json { render json: @testtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testtests/1
  # DELETE /testtests/1.json
  def destroy
    @testtest.destroy
    respond_to do |format|
      format.html { redirect_to testtests_url, notice: 'Testtest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testtest
      @testtest = Testtest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testtest_params
      params[:testtest]
    end
end
