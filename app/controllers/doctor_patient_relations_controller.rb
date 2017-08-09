class DoctorPatientRelationsController < ApplicationController
  before_action :set_doctor_patient_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @doctor_patient_relations = DoctorPatientRelation.all
  end

  def show
  end

  def new
    @doctor_patient_relation = DoctorPatientRelation.new
    @doctor_patient_relation.doctor_id = params[:doctor_id] if params[:doctor_id]
    @doctor_patient_relation.patient_id = params[:patient_id] if params[:patient_id]
  end

  def edit
  end

  def create
    @doctor_patient_relation = DoctorPatientRelation.new(doctor_patient_relation_params)
    if @doctor_patient_relation.save
      redirect_to doctor_patient_relations_path
    else
      render :new
    end
  end

  def update
    if @doctor_patient_relation.update(doctor_patient_relation_params)
      redirect_to doctor_patient_relations_path
    else
      render :edit
    end
  end

  def destroy
    @doctor_patient_relation.destroy
    redirect_to doctor_patient_relations_path
  end

  private

  def set_doctor_patient_relation
    @doctor_patient_relation = DoctorPatientRelation.find(params[:id])
  end

  def doctor_patient_relation_params
    params.require(:doctor_patient_relation).permit(:doctor_id, :patient_id, :location)
  end
end
