# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alto_guisso_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "alto_guisso_rails"
  spec.version       = AltoGuissoRails::VERSION
  spec.authors       = ["Mariano Abel Coca"]
  spec.email         = ["marianoabelcoca@gmail.com"]
  spec.summary       = %q{Alto Guisso allows connecting your application with Guisso (Instedd's Single Sign On)}
  spec.description   = %q{Use Guisso from a rails application}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("rails", ">= 3.0")
  spec.add_dependency("alto_guisso")
  spec.add_dependency("rack-oauth2")
  spec.add_dependency("ruby-openid")
  spec.add_dependency("omniauth")
  spec.add_dependency("omniauth-openid")
  spec.add_dependency("dalli")

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
