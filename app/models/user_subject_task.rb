class UserSubjectTask < ActiveRecord::Base
  belongs_to :task
  belongs_to :user_subject
end
