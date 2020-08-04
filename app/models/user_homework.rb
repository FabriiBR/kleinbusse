class UserHomework < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :homework
  validates :status, inclusion: { in: %w[pendiente enviado aprobado corregir],
                                  message: "#{value} is not a valid status" }
end
