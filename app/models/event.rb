class Event < ApplicationRecord
  belongs_to :course
  validates :date, presence: true
end
