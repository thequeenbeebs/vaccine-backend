class VaccinationCentersController < ApplicationController
    def index
        centers = VaccinationCenter.all     
        render json: centers
    end
end
