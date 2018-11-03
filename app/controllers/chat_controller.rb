class ChatController < ApplicationController
before_action :authenticate_user!
  def index
    @user = current_user
    gon.user_name = @user.name
  end
end
