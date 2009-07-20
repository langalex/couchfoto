# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_couchfoto_session',
  :secret      => '264d55c33cfcef5e875e4b7a338d84deec4b754b494c3258455f8d39ba6729b8035504c6c18cf435b49a920aaa89ff02a0569bc68b6476deb91a022cbe1d257d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
