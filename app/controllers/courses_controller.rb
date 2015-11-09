class CoursesController < ApplicationController
  def show
    @course = Course.find params[:id]
  end
  
  def index
    @courses = Course.paginate page: params[:page], per_page: 10
  end
end
