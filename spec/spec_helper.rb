ENV['RACK_ENV'] = 'test'
require("bundler/setup")
Bundler.require(:default, :test)

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure { |config|
  config.after(:each) { |config|

    Band.all.each { |band|
      band.destroy
    }

    Venue.all.each { |venue|
      venue.destroy
    }
  }
}
