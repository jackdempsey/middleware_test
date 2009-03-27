# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_middleware_test_session',
  :secret      => '1ed2179cfd0ab69dd09d2e28fd84680c809940ad6a4925f117f28bf46b9c316590111f51720ea41eed682419d7af59cf37d35aedb88bba714586719208148837'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
