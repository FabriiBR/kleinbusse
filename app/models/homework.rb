class Homework < ApplicationRecord
  belongs_to :lesson
  enum type: [:homework, :flashcard]
  validates :content, presence: true
end
