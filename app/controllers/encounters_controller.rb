class EncountersController < ApplicationController
  def new
    @patient = Patient.find(params[:patient_id])
    @encounter = Encounter.new
  end
  
  def create
    @patient = Patient.find(params[:patient_id])
    @encounter = @patient.encounters.create(encounter_params)
    if @encounter.save
      redirect_to patient_path(@patient)
    else
      render 'new'
    end
  end
  
  def show
    @patient = Patient.find(params[:patient_id])
    @encounter = Encounter.find(params[:id])
  end
  
  def edit
     @patient = Patient.find(params[:patient_id])
     @encounter = Encounter.find(params[:id])
  end
  
  def update
    @patient = Patient.find(params[:patient_id])
    @encounter = Encounter.find(params[:id])
    if @encounter.update(encounter_params)
      redirect_to patient_path(@patient)
    else
      render 'edit'
    end
  end
  
  def destroy
    @patient = Patient.find(params[:patient_id])
    @encounter = @patient.encounters.find(params[:id])
    @encounter.destroy
    
    redirect_to patient_path(@patient)
  end
  
  private
    def encounter_params
      params.require(:encounter).permit(:visitNumber, :admittedAt, :dischargedAt, :location, :room, :bed)
    end
end
