require 'small_event'

broker = SmallEvent::Broker.new

# consumer of all topics
broker.subscribe do |msg, topic|
  puts "all got '#{msg}' from topic '#{topic}'"
end

# consumer of specific topic
broker.subscribe 'specific' do |msg, topic, sub|
  puts "specific got '#{msg}' from topic '#{topic}'"
end

# consumer of matching topic
broker.subscribe(/^event[0-9]+/) do |msg, topic, sub|
  puts "matching got '#{msg}' from topic '#{topic}'"
end

# publish...
broker.publish "for all"
broker.publish "for specific", "specific"
broker.publish "for matching", "event1"
broker.publish "for matching", "event2"
broker.publish "not for matching", "event"
