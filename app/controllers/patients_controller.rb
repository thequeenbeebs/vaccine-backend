class PatientsController < ApplicationController
    def index
        patients = Patient.all
        render json: patients.to_json(:include => {
            :appointments => {:only => [:appointment_time, :id], :include => {
                :vaccination_center => {:only => [:name, :address, :phone_number, :city, :state, :zip_code, :coordinates, :days_closed, :opening_hour, :closing_hour]}
            }}
        })
    end

    def show
        patient = Patient.find(params[:id])
        render json: patient.to_json(:include => {
            :appointments => {:only => [:appointment_time, :id], :include => {
                :vaccination_center => {:only => [:name, :address, :phone_number, :city, :state, :zip_code]}
            }}
        })
    end

    def create
        patient = Patient.create(patient_params)
        render json: patient.to_json
    end

    private

    def patient_params
        params.require(:patient).permit(:first_name, :last_name, :email, :phone_number)
    end
end
