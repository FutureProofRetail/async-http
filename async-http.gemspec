
require_relative "lib/async/http/version"

Gem::Specification.new do |spec|
	spec.name = "async-http"
	spec.version = Async::HTTP::VERSION
	
	spec.summary = "A HTTP client and server library."
	spec.authors = ["Samuel Williams"]
	spec.license = "MIT"
	
	spec.cert_chain  = ['release.cert']
	spec.signing_key = File.expand_path('~/.gem/release.pem')
	
	spec.homepage = "https://github.com/socketry/async-http"
	
	spec.files = Dir.glob('{bake,lib}/**/*', File::FNM_DOTMATCH, base: __dir__)
	
	spec.add_dependency "async"
	spec.add_dependency "async-io", ">= 1.28"
	spec.add_dependency "async-pool", ">= 0.2"
	spec.add_dependency "protocol-http", "~> 0.22.0"
	spec.add_dependency "protocol-http1", "~> 0.14.0"
	spec.add_dependency "protocol-http2", "~> 0.14.0"
	spec.add_dependency "traces", "~> 0.4.0"
	
	spec.add_development_dependency "async-container", "~> 0.14"
	spec.add_development_dependency "async-rspec", "~> 1.10"
	spec.add_development_dependency "covered"
	spec.add_development_dependency "localhost"
	spec.add_development_dependency "rack-test"
	spec.add_development_dependency "rspec", "~> 3.6"
end
