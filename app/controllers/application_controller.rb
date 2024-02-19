class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :set_search

  private
  
  def set_search
    @q = Bookmark.ransack(params[:q])
    @bookmarks = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  def not_authenticated
    redirect_to login_path, alert: t('defaults.message.require_login')
  end
end
