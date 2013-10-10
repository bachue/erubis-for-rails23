Gem::Specification.new do |spec|
  spec.name          = 'erubis_for_rails23'
  spec.version       = '0.1'
  spec.authors       = ['Bachue Zhou']
  spec.email         = ['bachue.shu@gmail.com']
  spec.description   = %q{A simple gem which can resolve some compatibility issues when using Erubis in Rails 2.3}
  spec.summary       = %q{A simple gem which can resolve some compatibility issues when using Erubis in Rails 2.3}
  spec.homepage      = 'http://bachue.is-programmer.com'
  spec.license       = 'GPLv3'

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'erubis'
end
