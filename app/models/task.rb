class Task < ActiveRecord::Base
  belongs_to :subject
  validates :name, presence: true
  has_many :user_subject_tasks
  has_many :user_subjects, through: :user_subject_tasks
end
