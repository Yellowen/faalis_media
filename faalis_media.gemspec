$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "faalis/media/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "faalis-media"
  s.version     = Faalis::Media::VERSION
  s.authors     = ["Sameer Rahmani"]
  s.email       = ["lxsameer@gnu.org"]
  s.homepage    = "https://github.com/Yellowen/faalis_media"
  s.summary     = "A Media Engine for Faalis platform."
  s.description = "A Media Engine for Faalis platform which allows users to upload media file directly to their app and use them in there contents."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "faalis", "> 2"

  s.add_development_dependency "sqlite3"
end
