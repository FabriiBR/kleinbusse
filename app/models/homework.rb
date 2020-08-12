class Homework < ApplicationRecord
  belongs_to :lesson
  has_many :user_homeworks, dependent: :destroy
  enum type_off: [:homework, :flashcard]
  validates :content, presence: true
  def done_by(user)
    self.user_homeworks.find_by(student_id: user.id)
  end

end
