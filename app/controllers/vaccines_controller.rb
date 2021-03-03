class VaccinesController < ApplicationController
    def index
        vaccines = Vaccine.all
        render json: vaccines
    end
end
