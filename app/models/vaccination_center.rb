class VaccinationCenter < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
    has_many :doses
    has_many :vaccines, through: :doses
end
