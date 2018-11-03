class UsersController < ApplicationController
  before_action :authenticate_user!, only:[:index, :edit, :update]
  # ユーザー新規登録時（フォームでユーザー情報と住所を入力するところ）
  def index
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      redirect_to home_path
    else
      render 'new'
    end
  end
  def edit
    @user = current_user
  end

  def update_email
    @user = current_user
    if @user.update(user_params)
      redirect_to home_path
    else
      render action: 'edit_user'
    end
  end


  def confirm
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :infomation, :name, :image, :image_cache, :remove_image)
  end

end
