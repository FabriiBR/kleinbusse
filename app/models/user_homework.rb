class UserHomework < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :homework
end
