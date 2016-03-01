Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["API_KEY"], ENV["SECRET_KEY"]
end
