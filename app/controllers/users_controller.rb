class UsersController < ApplicationController
  before_action :logged_in_user
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy
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

  def edit
    @user = User.find params[:id]
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

  def show
    @user = User.find params[:id]
  end
  private

  def user_params
   params.require(:user).permit :name, :email, :password,
     :password_confirmation
  end

  def correct_user
    @user = User.find params[:id]
    redirect_to root_url unless @user == current_user
  end


end
