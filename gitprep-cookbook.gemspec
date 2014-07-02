Gem::Specification.new do |s|
  s.name        = 'gitprep-cookbook'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "Gitprep cookbook."
  s.description = "Gitprep cookbook."
  s.authors     = ["Keiichiro Yamamoto"]
  s.email       = 'k.yanmar@gmail.com'
  s.files       = ["lib/example.rb"]
  s.files       = `git ls-files`.split($/)
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
