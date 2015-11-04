class UserSubjectTask < ActiveRecord::Base
	belongs_to :task
  belongs_to :usersubject
end
