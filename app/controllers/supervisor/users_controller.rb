class Supervisor::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end

  def index
    @trainees = User.trainees.paginate page: params[:page],
      per_page: 10
  end

  def edit
    @user = User.find params[:id]
  end

  def show
    @user= User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes user_params
      flash[:success] = t('SuccessUpdate')
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = t('deletedUser')
    redirect_to supervisor_users_path
  end

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end
end
