class TagsController < ApplicationController
  before_action :set_tag, only: %i[ show edit update destroy ]
  def index
    @tags = current_user.tags.includes(:user).order(created_at: :desc)
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = current_user.tags.build(tag_params)
    if @tag.save
      flash.now.notice = t('defaults.messages.create')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    if @tag.update(tag_params)
      flash.now.notice = t('defaults.messages.update')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tag.destroy!
    flash.now.notice = t('defaults.messages.destroy')
  end

  private

  def set_tag
    @tag = current_user.tags.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
