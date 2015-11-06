class Course < ActiveRecord::Base
  has_many :usercourses, foreign_key: "course_id"
  has_many :cousersubjects, foreign_key: "course_id"
end
