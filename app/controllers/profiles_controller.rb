class ProfilesController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def show; end

  def edit; end

  def update
      if @user.update(user_params)
        redirect_to profile_path, success: t('defaults.messages.update')
      else
        flash.now['danger'] = t('defaults.messages.un_update')
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @user.destroy!
        redirect_to root_path, notice: t(defaults.messages.destroy_user)
    end

  private

    def set_user
      @user = User.find(current_user.id)
    end

    def user_params
      params.require(:user).permit(:email, :name)
    end
end
