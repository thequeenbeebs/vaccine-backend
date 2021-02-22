class Vaccine < ApplicationRecord
    has_many :doses
    has_many :vaccination_centers, through: :doses
    has_many :appointments
end
