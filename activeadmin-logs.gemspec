# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activeadmin/logs/version'

Gem::Specification.new do |spec|
  spec.name          = "activeadmin-logs"
  spec.version       = ActiveAdminLogs::VERSION
  spec.authors       = ["Radu Vlad"]
  spec.email         = ["radu.a.vlad@gmail.com"]
  spec.description   = %q{Logs for ActiveAdmin}
  spec.summary       = %q{Logs for ActiveAdmin}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
