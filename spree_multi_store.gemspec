Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_multi_store'
  s.version     = '0.0.1'

  s.summary     = 'Adds multiple store support to Spree'
  s.description = 'Multiple Spree stores on different domains or a single domain. The project is forked from spree/spree-multi-domain'
  s.required_ruby_version = '>= 1.8.7'

  s.authors           = ['Yu Wu']
  s.email             = 'wuyu@neweblog.com'
  s.homepage          = 'about:blank'
  s.rubyforge_project = 'spree_multi_store'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core',  '>= 0.70.0')
end
