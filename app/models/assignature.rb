class Assignature < ApplicationRecord
  belongs_to :teacher, class_name: "User", foreign_key: "teacher_id"
  belongs_to :batch
  has_many :lessons
  has_many :homeworks, through: :lessons
  has_many :user_homeworks, through: :homeworks

  def user_homework_completion_rate
    user_homeworks.approved.count / user_homeworks.count.to_f * 100
  end
  
end