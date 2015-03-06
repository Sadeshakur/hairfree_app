Instagram.configure do |config|
  config.client_id     = ENV["INSTAGRAM_OAUTH_ID"]
  config.client_secret = ENV["INSTAGRAM_OAUTH_SECRET"]
end
