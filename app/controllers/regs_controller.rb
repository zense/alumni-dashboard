class RegsController < ApplicationController
  before_action :authenticate_alumnus!
  before_action :ensure_admin
  before_action :set_reg, only: [:show, :edit, :update, :destroy]

  # GET /regs
  # GET /regs.json
  def index
    @regs = Reg.all
  end

  # GET /regs/1
  # GET /regs/1.json
  def show
  end

  # GET /regs/new
  def new
    @reg = Reg.new
  end

  # GET /regs/1/edit
  def edit
  end

  # POST /regs
  # POST /regs.json
  def create
    current_alumnus.update(alumnus_params)
    @reg = Reg.new(reg_params)


    respond_to do |format|
      if @reg.save
        format.html { redirect_to root_path, notice: 'Successful.' }
        format.json { render :show, status: :created, location: @reg }
      else
        format.html { render :new }
        format.json { render json: @reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regs/1
  # PATCH/PUT /regs/1.json
  def update
    # current_alumnus.update(alumnus_params)
    respond_to do |format|
      if @reg.update(reg_params)
        format.html { redirect_to @reg, notice: 'Reg was successfully updated.' }
        format.json { render :show, status: :ok, location: @reg }
      else
        format.html { render :edit }
        format.json { render json: @reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regs/1
  # DELETE /regs/1.json
  def destroy
    @reg.destroy
    respond_to do |format|
      format.html { redirect_to regs_url, notice: 'Reg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg
      @reg = Reg.find(params[:id])
    end

    def ensure_admin
      unless current_alumnus.admin?
        redirect_to(root_path, notice: 'Not authorized')
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reg_params
      params.require(:reg).permit(:alumnus_id, :event_id, :guests)
    end

    def alumnus_params
      params.require(:alumnus).permit(:roll_no, :name, :grad_year, :personal_mail, :college_mail, :phone_no, :company_name, :designation, :location, :linkedIn, :facebook)
    end
end
