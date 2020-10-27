class User < ApplicationRecord
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
     presence: true,
     numericality: { only_integer: true, greater_than: 0, lower_than: 100}

  
  belongs_to :city
  has_many :gossips
end
