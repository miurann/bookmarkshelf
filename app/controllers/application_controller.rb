class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :set_search
  add_flash_types :success, :info, :warning, :danger

  private

  def set_search
    @q = Bookmark.ransack(params[:q])
    @bookmarks = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  def not_authenticated
    redirect_to login_path, alert: t('defaults.messages.require_login')
  end
end
