class Consultation < ApplicationRecord

    validates :name, present: true
    validates :email, present: true
    
end
