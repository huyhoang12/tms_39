class Course < ActiveRecord::Base
  CREATE_COURSE = "CREATE_COURSE"
  attr_accessor :user_id
  validates :name, presence: true, length: { maximum: 100 }
  has_many :user_courses
  has_many :users, through: :user_courses
  has_many :course_subjects
  has_many :subjects, through: :course_subjects
  after_save :createCourseAction
  accepts_nested_attributes_for :course_subjects
  private
  def createCourseAction
    Activity.create action: CREATE_COURSE, target_id: self.id,
      user_id: user_id
  end
end
