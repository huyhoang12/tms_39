class UserCoursesController < ApplicationController
  def index
    @user_courses = UserCourse.paginate page: params[:page]
  end
end
