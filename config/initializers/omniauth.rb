Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,
           ENV['FACEBOOK_KEY'], ['FACEBOOK_SECRET']
end
