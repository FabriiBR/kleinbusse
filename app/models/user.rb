class User < ApplicationRecord
  belongs_to :batch

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #has_many :assignatures, foreign_key: :teacher_id
  has_many :assignatures, through: :batch
  has_many :courses, through: :batch
  has_many :user_homeworks, inverse_of: :student
  has_many :homeworks, through: :user_homeworks

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
  validates :institute, presence: true
  validates :birthday, presence: true
  validates :available, default: false
end
