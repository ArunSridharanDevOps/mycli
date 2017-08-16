# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mycli/version'

Gem::Specification.new do |spec|
  spec.name          = "mycli"
  spec.version       = Mycli::VERSION
  spec.authors       = ["Arun Sridharan"]
  spec.email         = ["ArunSridharan@outlook.com"]

  spec.summary       = %q{A Simple command line tool by Arun Sridharan.}
  spec.description   = %q{A Simple command line tool by Arun Sridharan.}
  spec.homepage      = "http://www.demo.net."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  #spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         = Dir['{bin,lib}/**/*']
  #spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'thor'
  spec.add_dependency 'httparty'
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
