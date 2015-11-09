class Subject < ActiveRecord::Base
  REJECT_NAME_BLANK_PROC = proc{|attributes| attributes["name"].blank?}
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks,
    reject_if: REJECT_NAME_BLANK_PROC, allow_destroy: true
  validates :name, presence: true
  has_many :course_subjects
  has_many :courses, through: :course_subjects
  has_many :user_subjects
  has_many :users, through: :user_subjects
end
