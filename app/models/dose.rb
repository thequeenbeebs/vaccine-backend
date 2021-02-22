class Dose < ApplicationRecord
    belongs_to :vaccine 
    belongs_to :vaccination_center
end
