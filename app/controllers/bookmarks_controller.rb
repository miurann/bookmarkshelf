class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[ show edit update destroy ]
  def index; end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = current_user.bookmarks.build(bookmark_params)
    if @bookmark.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @bookmark.update(bookmark_params)
      redirect_to bookmarks_path, success: t('defaults.messages.update')
    else
      render :edit
    end
  end

  def destroy
    @bookmark.destroy!
    redirect_to root_path, notice: t('defaults.messages.destroy')
  end

  private

  def set_bookmark
    @bookmark = current_user.bookmarks.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :memo)
  end
end
