class Batch < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :students, class_name: "User", foreign_key: "batch_id"
  has_many :assignatures

  validates :start_year, presence: true
end
