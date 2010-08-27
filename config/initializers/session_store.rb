# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_post-it_session',
  :secret      => '448573dc3cff3c0f6dc330912e8e1a2c7a9e980889dd16761b99fa8ac0a9a75b5fc6a3f8adc06cb7d1461542f46b3c5dd781239901a011fdc41648e2b2308a7a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
