
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "swagger2md/version"

Gem::Specification.new do |spec|
  spec.name          = "swagger2md"
  spec.version       = Swagger2md::VERSION
  spec.authors       = ['SFzxc']
  spec.email         = ['hoangphuocvanlong@gmail.com']

  spec.summary       = 'Convert swagger.json to markdown file'
  spec.description   = 'Convert swagger.json to markdown file'
  spec.homepage      = 'https://github.com/SFzxc/swagger2md'
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end
