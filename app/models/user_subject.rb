class UserSubject < ActiveRecord::Base
	belongs_to :subject
  belongs_to :user
  has_many :usersubjecttasks, foreign_key: "user_subject_id"
  has_many :tasks, through: :usersubjecttask
end
