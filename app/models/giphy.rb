Giphy::Configuration.configure do |config|
  config.version = THE_API_VERSION
  config.api_key = YOUR_API_KEY

  Giphy.trending(limit: 5)

end
