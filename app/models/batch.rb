class Batch < ApplicationRecord
  has_many :courses
  has_many :users

  validates :grade, presence: true
  validates :start_year, presence: true
end
