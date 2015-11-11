class Supervisor::CoursesController < ApplicationController

  def index

  end

  def new
    @course = Course.new
    subjects = Subject.all
    subjects.each do |subject|
      @course.course_subjects.build subject: subject
    end
  end

  def create
    @course = Course.new course_params
    @course.user_id = current_user.id
    if @course.save
      redirect_to supervisor_courses_path
    else
      @subjects = Subject.all
      render "new"
    end
  end

  def course_params
    params.require(:course).permit :name,
      course_subjects_attributes: [:subject_id]
  end
end
