class UniqueWhitelinesController < ApplicationController
  before_action :set_unique_whiteline, only: [:show, :edit, :update, :destroy]

  # GET /unique_whitelines
  # GET /unique_whitelines.json
  def index
    @unique_whitelines = UniqueWhiteline.all
  end

  # GET /unique_whitelines/1
  # GET /unique_whitelines/1.json
  def show
  end

  # GET /unique_whitelines/new
  def new
    @unique_whiteline = UniqueWhiteline.new
  end

  # GET /unique_whitelines/1/edit
  def edit
  end

  def check_carrier
    
  end

  # GET /unique_whitelines/check_carrier
  # GET /unique_whitelines/check_carrier.json
  def check_carrier 

    @check_carrier = RestClient.post "http://api.ezsms.biz/vK2FIDJSrp4Tt5gBuLhdRZXsqf7NUezi/hlrdb/query/", { :mobilenumber => params[:mobilenumber], :password => params[:password]}, :content_type => 'application/json'

    respond_to do |format|
        format.html { render :html => @check_carrier }
        format.text { render :text => @check_carrier }
        format.json { render :json => @check_carrier }
    end
  end

  # POST /unique_whitelines
  # POST /unique_whitelines.json
  def create
    @unique_whiteline = UniqueWhiteline.new(unique_whiteline_params)

    respond_to do |format|
      if @unique_whiteline.save
        format.html { redirect_to @unique_whiteline, notice: 'Unique whiteline was successfully created.' }
        format.json { render action: 'show', status: :created, location: @unique_whiteline }
      else
        format.html { render action: 'new' }
        format.json { render json: @unique_whiteline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unique_whitelines/1
  # PATCH/PUT /unique_whitelines/1.json
  def update
    respond_to do |format|
      if @unique_whiteline.update(unique_whiteline_params)
        format.html { redirect_to @unique_whiteline, notice: 'Unique whiteline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @unique_whiteline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unique_whitelines/1
  # DELETE /unique_whitelines/1.json
  def destroy
    @unique_whiteline.destroy
    respond_to do |format|
      format.html { redirect_to unique_whitelines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unique_whiteline
      @unique_whiteline = UniqueWhiteline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unique_whiteline_params
      params.require(:unique_whiteline).permit(:softbank_phone_number)
    end
end
