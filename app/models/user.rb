class User < ApplicationRecord
  belongs_to :batch
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
  validates :institute, presence: true
  validates :birthday, presence: true
  validates :available, default: false
end
