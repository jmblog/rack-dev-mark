require File.expand_path('../lib/rack/dev-mark/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "rack-dev-mark"
  gem.version     = Rack::DevMark::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Daisuke Taniwaki"]
  gem.email       = ["daisuketaniwaki@gmail.com"]
  gem.homepage    = "https://github.com/dtaniwaki/rack-dev-mark"
  gem.summary     = "Differentiate development environemt from production"
  gem.description = "Differentiate development environemt from production"
  gem.license     = "MIT"

  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency "rack", ">= 1.1"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "coveralls"
end
