class Lesson < ApplicationRecord
  belongs_to :assignature
  has_many :homeworks, dependent: :destroy
  has_many :user_homeworks, through: :homework
  validates :name, presence: true
  scope :approved, -> { where(status: "aprobado") }
end
