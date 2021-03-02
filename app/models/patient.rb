class Patient < ApplicationRecord
    has_many :appointments
    has_many :vaccination_centers, through: :appointments
    has_secure_password

    validates :email, uniqueness: true
    validates :email, presence: true 
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, presence: true
end
