class PatientsController < ApplicationController
    def index
        patients = Patient.all
        render json: patients.to_json
    end

    def show
        patient = Patient.find(params[:id])
        render json: patient.to_json(:include => {
            :appointments => {:only => [:appointment_time], :include => {
                :vaccination_center => {:only => [:name, :address, :phone_number, :city, :state, :zip_code]}
            }}
        })
    end
end
