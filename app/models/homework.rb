class Homework < ApplicationRecord
  belongs_to :lesson
  enum type_off: [:homework, :flashcard]
  validates :content, presence: true
  validate :flashcard_type
  def flashcard_type
    type.value == 'flashcard'
  end
end
