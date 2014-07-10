class ClarkStaffsController < ApplicationController
  before_action :set_clark_staff, only: [:show, :edit, :update, :destroy]

  # GET /clark_staffs
  # GET /clark_staffs.json
  def index
    @clark_staffs = ClarkStaff.all
  end

  # GET /clark_staffs/1
  # GET /clark_staffs/1.json
  def show
  end

  # GET /clark_staffs/new
  def new
    @clark_staff = ClarkStaff.new
  end

  # GET /clark_staffs/1/edit
  def edit
  end

  # POST /clark_staffs
  # POST /clark_staffs.json
  def create
    @clark_staff = ClarkStaff.new(clark_staff_params)

    respond_to do |format|
      if @clark_staff.save
        format.html { redirect_to @clark_staff, notice: 'Clark staff was successfully created.' }
        format.json { render :show, status: :created, location: @clark_staff }
      else
        format.html { render :new }
        format.json { render json: @clark_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clark_staffs/1
  # PATCH/PUT /clark_staffs/1.json
  def update
    respond_to do |format|
      if @clark_staff.update(clark_staff_params)
        format.html { redirect_to @clark_staff, notice: 'Clark staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @clark_staff }
      else
        format.html { render :edit }
        format.json { render json: @clark_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clark_staffs/1
  # DELETE /clark_staffs/1.json
  def destroy
    @clark_staff.destroy
    respond_to do |format|
      format.html { redirect_to clark_staffs_url, notice: 'Clark staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clark_staff
      @clark_staff = ClarkStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clark_staff_params
      params.require(:clark_staff).permit(:name, :department, :birthday, :gender) #if params[:clark_staff]
    end
end
