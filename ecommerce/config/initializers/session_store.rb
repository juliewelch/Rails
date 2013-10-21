# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ecommerce_session',
  :secret      => 'd3de35a8a86142db0c61f19414d25944d4a965d72ca33fabcc0215c7ffb8559ca71a8dabba174dad67f46775fde64661e9a34e21eff3e799601e435e104d6fde'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
