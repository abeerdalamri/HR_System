class Employee < ApplicationRecord
    belongs_to :team
    belongs_to :divison 

    # validation
    validates :email, presence: true, format: {with:/[a-z]+@.+\.\S+\z/}, uniqueness: true
    validates :name, presence: true
    validates :job, presence: true
    validates :salary, presence: true, numericality: { greater_than_or_equal_to: 10000, less_than_or_equal_to: 30000 }
    validates :emp_status, presence: true
end
