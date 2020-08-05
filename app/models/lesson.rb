class Lesson < ApplicationRecord
  belongs_to :assignature
  has_many :homeworks, dependent: :destroy
  validates :name, presence: true
end
