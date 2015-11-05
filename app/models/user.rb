class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_many :activities, foreign_key: "user_id"
  has_many :usercourses, foreign_key: "user_id"
  has_many :courses, through: :usercourse
  has_many :usersubjects, foreign_key: "user_id"
  has_many :subjects, through: :usersubject
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
  before_save { self.email = email.downcase }
end
