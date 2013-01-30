require './lib/stepper-instrument'

Gem::Specification.new do |s|
  s.name = 'stepper-instrument'
  s.version = '0.0.1'
  s.date  = '2013-01-30'
  s.author = 'SeongSik, Kim'
  s.email = 'kssminus@gmail.com'
  s.summary = 'Instrument your app to send metrics to a Stepper'
  s.description = 'Instrument your app to send metrics to a Stepper.'
  s.homepage = 'https://github.com/kssminus/stepper-instrument.git'
  s.files = ['lib/stepper-instrument.rb']

  s.add_runtime_dependency 'remote_syslog', '~> 1.6.13'  # for file feed
  
  s.required_ruby_version = '>= 1.9.2'
end
