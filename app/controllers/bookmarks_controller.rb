class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[ show edit update destroy ]
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @user = User.new
  end

  def create
    @bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @bookmark.update(bookmark_params)
      redirect_to bookmarks_path, notice: "Bookmark was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @bookmark.destroy!
    redirect_to bookmarks_path, notice: "Bookmark was successfully destroyed."
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :memo)
  end
end
