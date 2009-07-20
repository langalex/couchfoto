RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "langalex-couch_potato", lib: 'couch_potato'
  config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  config.time_zone = 'UTC'

end