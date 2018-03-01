# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'baidu/aip/version'

Gem::Specification.new do |spec|
  spec.name          = 'baidu-aip'
  spec.version       = Baidu::Aip::VERSION
  spec.authors       = ['Jeremy Cui']
  spec.email         = ['tsuijy@gmail.com']

  spec.summary       = %q{Baidu aip ruby sdk(unofficial)}
  spec.description   = %q{Baidu aip ruby sdk(unofficial)}
  spec.homepage      = 'https://github.com/jerecui/baidu-aip'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rest-client', '>=2.0', '<6.0'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
