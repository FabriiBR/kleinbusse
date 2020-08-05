class Lesson < ApplicationRecord
  belongs_to :assignature
  
  validates :name, presence: true
end
