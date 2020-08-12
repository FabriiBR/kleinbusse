class UserHomework < ApplicationRecord
  belongs_to :student, class_name: "User", inverse_of: :user_homeworks
  belongs_to :homework
  has_one_attached :file

  scope :needs_action, -> { where(status: ["pendiente", "corregir"]) }
  scope :pending, -> { where(status: "pendiente") }
  scope :approved, -> { where(status: "aprobado") }
end
