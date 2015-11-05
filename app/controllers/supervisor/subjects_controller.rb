class Supervisor::SubjectsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def new
    @subject = Subject.new
    4.times{@subject.tasks.build}
  end

  def create
    @subject = Subject.new subject_params
    if @subject.save
      redirect_to supervisor_subject_path @subject
    else
      render :new
    end
  end

  def show
    @subject = Subject.find params[:id]
    @tasks = @subject.tasks
  end

  private

  def subject_params
    params.require(:subject).permit(:name, tasks_attributes: [:name])
  end
end
