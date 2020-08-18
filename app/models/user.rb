class User < ApplicationRecord
  before_create :set_default_avatar

  belongs_to :batch

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :assignatures, foreign_key: :teacher_id
  has_many :assignatures, through: :batch
  has_many :courses, through: :batch
  has_many :user_homeworks, foreign_key: "student_id", inverse_of: :student
  has_many :homeworks, through: :user_homeworks

  # agregar a params y vistas
  has_one_attached :avatar

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
  validates :institute, presence: true
  validates :birthday, presence: true
  validates :available, default: false

  def self.check_avatar(user)
    @avatar = user.avatar
    if user.avatar.attached?
      @user_avatar = @avatar.key
    else
      @user_avatar ="https://res.cloudinary.com/julianoviedo1/image/upload/v1597762430/default_avatar.png"
    end
    return @user_avatar
  end
end
