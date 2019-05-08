class User < ApplicationRecord
  has_many :reflections
  has_many :activities, through: :reflections

  validates :username, uniqueness: true
  has_secure_password

  def reflection_count
    self.reflections.count
  end

  def total_activity_time
    self.activities.map{|act| act.time}.sum
  end
end
