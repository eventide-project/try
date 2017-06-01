# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'evt-try'
  s.version = '0.2.1.1'
  s.summary = 'Attempt an execution, and determine its success'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/try'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3.3'

  s.add_development_dependency 'test_bench'
end
