class MapsController < ApplicationController
before_action :authenticate_user!
  def index
    @user = current_user
    gon.user_name = @user.name
    gon.user_id = @user.id
    gon.user_info = @user.infomation
    gon.user_status = @user.status
    gon.user_image = @user.image
  end
end
