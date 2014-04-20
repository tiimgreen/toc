Gem::Specification.new do |s|
  s.name          = 'toc'
  s.version       = '0.0.3'
  s.date          = '2014-04-04'
  s.summary       = 'Colour your outputs to the console.'
  s.description   = 'Toc is a simple tool used for colouring outputs to the console.'
  s.authors       = ['Tim Green']
  s.email         = 'tiimgreen@gmail.com'

  s.files         = ['lib/toc.rb']
  s.homepage      = 'https://github.com/tiimgreen/toc'
  s.license       = 'MIT'
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'coveralls'
end
