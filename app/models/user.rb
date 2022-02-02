class User < ApplicationRecord
    
     # validation
    validates :email, presence: true, format: {with:/[a-z]+@.+\.\S+\z/}, uniqueness: true
    validates :name, presence: true
    validates :password , presence: true, format: {with:/[([a-z]|[A-Z])0-9_-]{6,40}/}
end
