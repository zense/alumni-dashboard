class AlumniController < ApplicationController
  before_action :authenticate_alumnus!
  before_action :set_alumnus, only: [:show, :edit, :update, :destroy]

  # GET /alumni
  # GET /alumni.json
  # @alumnus=current_alumnus
  def index
    @alumni = current_alumnus
  end

  # GET /alumni/1
  # GET /alumni/1.json
  def show
  end
  # GET /alumni/new
  def new
    @alumnus = Alumnus.new
  end

  # GET /alumni/1/edit
  def edit
  end

  # POST /alumni
  # POST /alumni.json
  def create
    @alumnus = Alumnus.new(alumnus_params)

    respond_to do |format|
      if @alumnus.save
        format.html { redirect_to @alumnus, notice: 'Alumnus was successfully created.' }
        format.json { render :show, status: :created, location: @alumnus }
      else
        format.html { render :new }
        format.json { render json: @alumnus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumni/1
  # PATCH/PUT /alumni/1.json
  def update
    respond_to do |format|
      if @alumnus.update(alumnus_params)
        format.html { redirect_to @alumnus, notice: 'Alumnus was successfully updated.' }
        format.json { render :show, status: :ok, location: @alumnus }
      else
        format.html { render :edit }
        format.json { render json: @alumnus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumni/1
  # DELETE /alumni/1.json
  def destroy
    @alumnus.destroy
    respond_to do |format|
      format.html { redirect_to alumni_url, notice: 'Alumnus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumnus
      @alumnus = Alumnus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumnus_params
      params.require(:alumnus).permit(:roll_no, :name, :grad_year, :personal_mail, :college_mail, :phone_no, :company_name, :designation, :location, :linkedIn, :facebook)
    end

end
