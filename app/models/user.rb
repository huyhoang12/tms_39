class User < ActiveRecord::Base
	has_many :activities, foreign_key: "user_id"
	has_many :usercourses, foreign_key: "user_id"
	has_many :courses, through: :usercourse
	has_many :usersubjects, foreign_key: "user_id"
	has_many :subjects, through: :usersubject
end
