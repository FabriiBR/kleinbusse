class UserHomework < ApplicationRecord
  belongs_to :student, class_name: "User", inverse_of: :user_homeworks
  belongs_to :homework
  has_one_attached :file
 end
