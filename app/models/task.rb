class Task < ActiveRecord::Base
  belongs_to :subject
  has_many :usersubjecttasks, foreign_key: "task_id"
  has_many :usersubjects, through: :usersubjecttask
end
