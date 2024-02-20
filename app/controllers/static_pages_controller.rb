class StaticPagesController < ApplicationController
  skip_before_action :require_login
  def top
    if logged_in?
      redirect_to bookmarks_path
    end
  end
end
