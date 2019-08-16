require File.expand_path("../lib/small_event/version", __FILE__)
require 'time'

spec = Gem::Specification.new do |s|
  s.name    = "small_event"
  s.version = SmallEvent::VERSION
  s.date = Date.today.to_s
  s.summary = "in-memory publish/subscribe for small-ish applications"
  s.author  = "Cameron Harper"
  s.email = "contact@cjh.id.au"
  s.files = Dir.glob("lib/**/*.rb")
  s.license = 'MIT'
  s.test_files = Dir.glob("test/**/*.rb")
  s.required_ruby_version = 2.0
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
end
