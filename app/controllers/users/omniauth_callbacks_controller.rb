class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    oauth_login("Github", "devise.github_data")
  end

  def google_oauth2
    oauth_login("Google", "devise.google_data")
  end

  def facebook
    oauth_login("Facebook", "devise.facebook_data")
  end

  private
  def oauth_login(kind, session_name)
    @user = User.find_for_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => kind) if is_navigational_format?
    else
      session[session_name] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

end