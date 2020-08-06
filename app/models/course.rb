class Course < ApplicationRecord
  belongs_to :batch
  has_many :events, dependent: :destroy
  validates :name, presence: true
end
