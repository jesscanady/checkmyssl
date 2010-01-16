# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_checkmyssl_session',
  :secret      => 'ca79fe0dc9b8a1704023c45c3ca738aa430d5c52b1f2327012b6fa220a9732772c795c42ff0a683284fedeb92f189b3c0f6807d5761aeaf6a1354e3dbeebd552'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
