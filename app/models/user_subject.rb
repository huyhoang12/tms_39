class UserSubject < ActiveRecord::Base
  belongs_to :subject
  belongs_to :user
  has_many :user_subject_tasks
  has_many :tasks, through: :user_subject_tasks
end
