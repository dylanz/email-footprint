# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'email-footprint/version'

Gem::Specification.new do |spec|
  spec.name          = 'email-footprint'
  spec.version       = EmailFootprint::VERSION.dup
  spec.authors       = ['Subvertical LLC']
  spec.email         = ['developers@verticalchange.com']

  spec.summary       = 'Send and track emails with AWS.'
  spec.description   = 'Sending and tracking emails using Amazon SES, SNS, SQS, Lambda and DynamoDB.'
  spec.homepage      = 'https://github.com/subvertical/email-footprint'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'aws-sdk'
  spec.add_dependency 'thor'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
