class UserHomework < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :homework
  has_one_attached :file
  validates :status, inclusion: { in: %w[pendiente enviado aprobado corregir],
                                  message: " is not a valid status" }
  # {status} agregar al mensaje
end
