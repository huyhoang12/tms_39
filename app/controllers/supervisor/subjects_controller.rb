class Supervisor::SubjectsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def index
    @subjects = Subject.paginate page: params[:page], per_page: 10
  end

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

  def destroy
    @subject = Subject.find(params[:id]).destroy
    flash[:success]= t "deletedSubject"
    redirect_to supervisor_subjects_path
  end

  def edit
    @subject = Subject.find params[:id]
    @tasks = @subject.tasks
  end

  def update
    @subject = Subject.find params[:id]
    if @subject.update_attributes subject_params
      flash[:success] = t "subjectUpdated"
      redirect_to supervisor_subjects_path
    else
      render :edit
    end
  end

  private

  def subject_params
    params.require(:subject).permit(:name, tasks_attributes: [:id, :name, :_destroy])
  end
end
