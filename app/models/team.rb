class Team < ApplicationRecord
    has_many :employees
    has_many :targets
    belongs_to :divison

     # validation
    validates :name, length: {minimum: 3}
    validates :desc, length: {minimum: 5}
    validates :members, length: {minimum: 5}
    validates :teamLead, length: {minimum: 3}
    

end
