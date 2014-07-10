class MakatiStaffsController < ApplicationController
  before_action :set_makati_staff, only: [:show, :edit, :update, :destroy]

  # GET /makati_staffs
  # GET /makati_staffs.json
  def index
    @makati_staffs = MakatiStaff.all
  end

  # GET /makati_staffs/1
  # GET /makati_staffs/1.json
  def show
  end

  # GET /makati_staffs/new
  def new
    @makati_staff = MakatiStaff.new
  end

  # GET /makati_staffs/1/edit
  def edit
  end

  # POST /makati_staffs
  # POST /makati_staffs.json
  def create
    @makati_staff = MakatiStaff.new(makati_staff_params)

    respond_to do |format|
      if @makati_staff.save
        format.html { redirect_to @makati_staff, notice: 'Makati staff was successfully created.' }
        format.json { render :show, status: :created, location: @makati_staff }
      else
        format.html { render :new }
        format.json { render json: @makati_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makati_staffs/1
  # PATCH/PUT /makati_staffs/1.json
  def update
    respond_to do |format|
      if @makati_staff.update(makati_staff_params)
        format.html { redirect_to @makati_staff, notice: 'Makati staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @makati_staff }
      else
        format.html { render :edit }
        format.json { render json: @makati_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makati_staffs/1
  # DELETE /makati_staffs/1.json
  def destroy
    @makati_staff.destroy
    respond_to do |format|
      format.html { redirect_to makati_staffs_url, notice: 'Makati staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_makati_staff
      @makati_staff = MakatiStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def makati_staff_params
      params.require(:makati_staff).permit(:name, :age, :department, :gender)
    end
end
