# -*- encoding: utf-8 -*-
require File.expand_path('../lib/marked-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["nodanaonlyzuul", "rosscooperman"]
  gem.email         = ["cooperman@gmail.com"]
  gem.description   = 'A gemified verison of the chjj/marked: "A full-featured markdown parser and compiler, written in javascript."'
  gem.summary       = 'A gemified verison of the chjj/marked'
  gem.homepage      = "https://github.com/rosscooperman/marked-rails"
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "marked-rails"
  gem.require_paths = ["lib"]
  gem.version       = Marked::Rails::VERSION
end
