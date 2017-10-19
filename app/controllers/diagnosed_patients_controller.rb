class DiagnosedPatientsController < ApplicationController
  before_action :set_diagnosed_patient, only: [:show, :edit, :update, :destroy]

  # GET /diagnosed_patients
  # GET /diagnosed_patients.json
  def index
    @diagnosed_patients = DiagnosedPatient.all
    @diseases = Disease.all
  end

  # GET /diagnosed_patients/1
  # GET /diagnosed_patients/1.json
  def show
  end

  # GET /diagnosed_patients/new
  def new
    @diagnosed_patient = DiagnosedPatient.new
    @diseases = Disease.all
  end

  # GET /diagnosed_patients/1/edit
  def edit
  end

  # POST /diagnosed_patients
  # POST /diagnosed_patients.json
  def create
    @diagnosed_patient = DiagnosedPatient.new(diagnosed_patient_params)

    respond_to do |format|
      if @diagnosed_patient.save
        format.html { redirect_to @diagnosed_patient, notice: 'Diagnosed patient was successfully created.' }
        format.json { render :show, status: :created, location: @diagnosed_patient }
      else
        format.html { render :new }
        format.json { render json: @diagnosed_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnosed_patients/1
  # PATCH/PUT /diagnosed_patients/1.json
  def update
    respond_to do |format|
      if @diagnosed_patient.update(diagnosed_patient_params)
        format.html { redirect_to @diagnosed_patient, notice: 'Diagnosed patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @diagnosed_patient }
      else
        format.html { render :edit }
        format.json { render json: @diagnosed_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosed_patients/1
  # DELETE /diagnosed_patients/1.json
  def destroy
    @diagnosed_patient.destroy
    respond_to do |format|
      format.html { redirect_to diagnosed_patients_url, notice: 'Diagnosed patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosed_patient
      @diagnosed_patient = DiagnosedPatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnosed_patient_params
      params.require(:diagnosed_patient).permit(:gender, :age, :latitude, :longitude, :status, :disease_id, :area)
    end
end
