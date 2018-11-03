class UsersController < ApplicationController
  before_action :authenticate_user!
  # ユーザー新規登録時（フォームでユーザー情報と住所を入力するところ）
  def index
    @user = current_user
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
