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

    def profile
        token = request.headers["Authenticate"]
        patient = Patient.find(decode(token)["patient_id"])
        render json: patient.to_json(:include => {
            :appointments => {:only => [:appointment_time, :id], :include => {
                :vaccination_center => {:only => [:name, :address, :phone_number, :city, :state, :zip_code, :coordinates, :days_closed, :opening_hour, :closing_hour]}
            }}
        })
    end

    def create
        @patient = Patient.new(patient_params)
        if @patient.valid?
            @patient.save
            payload = {patient_id: @patient.id}
            token = encode(payload)
            render json: { patient_data: @patient.to_json(:include => {
                :appointments => {:only => [:appointment_time, :id], :include => {
                    :vaccination_center => {:only => [:name, :address, :phone_number, :city, :state, :zip_code, :coordinates, :days_closed, :opening_hour, :closing_hour]}
                }}
            }), token: token}
        else
            render json: {error_message: "E-Mail Address Must Be Unique"}
        end
    end

    private

    def patient_params
        params.require(:patient).permit(:first_name, :last_name, :email, :phone_number, :password, :password_confirmation)
    end
end
