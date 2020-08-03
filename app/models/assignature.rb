class Assignature < ApplicationRecord
  belongs_to :teacher, class_name: "User"
  belongs_to :batch
  has_many :lessons
end
