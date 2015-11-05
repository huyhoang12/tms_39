class Subject < ActiveRecord::Base
  has_many :cousersubjects, foreign_key: "subject_id"
  has_many :courses, through: :cousersubject
  has_many :usersubjects, foreign_key: "subject_id"
  has_many :users, through: :usersubject
  has_many :tasks, foreign_key: "task_id"
end
