class Appointment < ApplicationRecord
    belongs_to :vaccination_center
    belongs_to :patient
    # belongs_to :vaccine
end
