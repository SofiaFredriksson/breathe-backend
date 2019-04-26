class Activity < ApplicationRecord
  belongs_to :category
  has_many :reflections

  validates :title, :description, :time, presence: true
end
