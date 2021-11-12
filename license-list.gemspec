Gem::Specification.new do |s|
  s.name        = 'license-list'
  s.version     = '2.0.0'
  s.summary     = "Rake tasks to list gems and their licenses. It also supports exporting to csv format."
  s.description = "Rake tasks to list gems and their licenses. It also supports exporting to csv format."
  s.authors     = ["Kirk Chen"]
  s.email       = 'chen.kirk@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://rubygems.org/gems/license-list'
  s.license     = 'MIT'

  s.add_dependency "rails", ">= 3.2"
end
