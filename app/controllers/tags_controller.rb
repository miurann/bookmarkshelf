class TagsController < ApplicationController
  def index
    @tags = current_user.tags.includes(:user).order(created_at: :desc)
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
