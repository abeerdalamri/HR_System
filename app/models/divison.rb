class Divison < ApplicationRecord
    has_one :employee
    has_many :teams
    
     # validation
    validates :name, length: {minimum: 3}
    validates :desc, length: {minimum: 5}
    validates :team, length: {minimum: 5}
    validates :manager, length:{minimum: 3} 
end
