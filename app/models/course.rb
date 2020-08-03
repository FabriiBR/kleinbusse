class Course < ApplicationRecord
  belongs_to :batch
  has_many :events
  validates :name, presence: true
end
