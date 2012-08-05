require './lib/taobao/version'

Gem::Specification.new do |s|
  s.name        = 'taobaorb'
  s.version     =  Taobao::VERSION
  s.date        = '2012-07-27'
  s.summary     = 'Ruby wrapper for the Taobao API'
  s.description = 'Ruby wrapper for the Taobao API'
  s.authors     = ['m16a1']
  s.email       = 'a741su@gmail.com'
  s.files       = Dir['lib/**/*', 'spec/**/*']
  s.homepage    = 'https://github.com/m16a1/taobaorb'
end