class Assignature < ApplicationRecord
  belongs_to :teacher, class_name: "User", foreign_key: "teacher_id"
  belongs_to :batch
  has_many :lessons
<<<<<<< HEAD
  has_many :homeworks, through: :lessons
=======
  #has_many :homeworks, through: :lessons
>>>>>>> master
end
