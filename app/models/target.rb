class Target < ApplicationRecord
    belongs_to :team
    
     # validation
    validates :name, presence: true, length: {minimum: 3}
    validates :desc, length: {minimum: 5}
    validates :sDate, presence: true
    validates :fDate, presence: true
    validates :attr, presence: true
    validates :state, presence: true
end
