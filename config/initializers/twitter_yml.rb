# -------------------------------------------------------------
# This block ensures that a config file exists to help
# the application connect to the twitter api without exposing
# credentials in the public repo.
# -------------------------------------------------------------

begin
  twitter_config = File.open("config/twitter.yml")
rescue
  twitter_config = File.open("config/twitter.yml", "w")
  twitter_config.puts "login:"
  twitter_config.puts "  username: myusername"
  twitter_config.puts "  password: mypassword"
end