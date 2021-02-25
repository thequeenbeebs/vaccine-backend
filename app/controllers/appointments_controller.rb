class AppointmentsController < ApplicationController
    def create
        appointment = Appointment.create(appointment_params)
        render json: appointment.to_json
    end

    def destroy
        appointment = Appointment.find(params[:id])
        appointment.delete
    end

    private

    def appointment_params
        params.require(:appointment).permit(:appointment_time, :patient_id, :vaccination_center_id, :vaccine_id)
    end
end