# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'gitprep-cookbook'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "Gitprep cookbook."
  s.description = "Gitprep cookbook."
  s.authors     = ["Keiichiro Yamamoto"]
  s.email       = 'k.yanmar@gmail.com'
  s.files       = `git ls-files`.split($/)
  s.require_paths = ['lib']
  s.add_development_dependency "bundler"
  s.add_development_dependency "helpers"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "chefspec"
  s.add_development_dependency "berkshelf"
end
