class ApplicationController < ActionController::Base
  
  include SessionsHelper
  
  private

  def require_user_logged_in
    # もしユーザがログインしていなければ
    unless logged_in?
      # ログイン画面にリダイレクトする
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_tasks = user.tasks.count
  end
end
