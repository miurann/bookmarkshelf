class TagsController < ApplicationController
  before_action :set_tag, only: %i[ show edit update destroy ]
  def index
    @tags = current_user.tags.includes(:user).order(created_at: :desc)
  end

  def new
  end

  def create
  end

  def show; end

  def edit; end

  def update
    if @tag.update(tag_params)
      redirect_to @tag, success: t('defaults.messages.update')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tag.destroy!
    redirect_to tags_path, info: t('defaults.messages.destroy')
  end

  private

  def set_tag
    @tag = current_user.tags.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
