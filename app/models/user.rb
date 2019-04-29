class User < ApplicationRecord
  has_many :reflections
  has_many :activities, through: :reflections

  validates :username, uniqueness: true
  has_secure_password
end
