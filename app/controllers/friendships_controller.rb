class FriendshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def create
    @friendship = current_user.request_friendship(@user)
    respond_to do |format|
      format.html {redirect_to users_path, notice: "Frienship Created"}
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

end