class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[ new create ]
  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to bookmarks_path
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, success: t('defaults.messages.success_logout')
  end
end
