class User < ApplicationRecord
  has_many :reflections
  has_many :activities, through: :reflections
end
