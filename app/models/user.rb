class User < ApplicationRecord
  has_secure_password
  validates :first_name,
    presence: true

  validates :last_name,
    presence: true

  validates :description,
    presence: true,
    length: {maximum: 500}

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
    
  validates :age,
     presence: true

  validates :password, 
    presence: true, 
    length: { minimum: 6 }

  
  belongs_to :city
  has_many :gossips
end
