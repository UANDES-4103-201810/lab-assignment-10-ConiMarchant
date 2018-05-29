class CallbacksController < Devise :: OmniauthCallbacksController
  def omniauth_auth
    @user = User.from_omniauth(request.env["facebook.auth"])
    sign_in_and_redirect @user
  end
end