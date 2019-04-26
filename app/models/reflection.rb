class Reflection < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :content, :score, presence: true
end
