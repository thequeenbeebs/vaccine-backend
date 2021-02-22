class Patient < ApplicationRecord
    has_many :appointments
    has_many :vaccination_centers, through: :appointments
end
