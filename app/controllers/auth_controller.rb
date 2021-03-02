class AuthController < ApplicationController
    def create
        @patient = Patient.find_by(email: params[:email])
        if (@patient && @patient.authenticate(params[:password]))
            payload = {patient_id: @patient.id}
            token = encode(payload)
            render json: { patient_data: @patient.to_json(:include => {
                :appointments => {:only => [:appointment_time, :id], :include => {
                    :vaccination_center => {:only => [:name, :address, :phone_number, :city, :state, :zip_code, :coordinates, :days_closed, :opening_hour, :closing_hour]}
                }}
            }), token: token}
        else
            render json: {error_message: "Incorrect E-mail Address or Password"}
        end
    end


end
