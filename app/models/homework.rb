class Homework < ApplicationRecord
  belongs_to :lesson
  enum type_off: [:homework, :flashcard]
  validates :content, presence: true

end
