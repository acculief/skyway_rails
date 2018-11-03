class ChatController < ApplicationController
  def index
    @user = current_user
    gon.user_name = @user.name
  end
end
