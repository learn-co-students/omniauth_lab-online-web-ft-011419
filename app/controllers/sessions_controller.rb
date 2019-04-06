class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |a|
      a.name = auth['info']['name']
    end
    session[:user_id] = @user.id
    render 'welcome/home'
  end

  def delete
    if session[:user_id]
      session.destroy
    end
  end
  private
  def auth
    request.env['omniauth.auth']
  end
end
