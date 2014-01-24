require_relative "./lib/motion-iconic/version"

Gem::Specification.new do |spec|
  spec.name          = "motion-iconic"
  spec.version       = Motion::Iconic::VERSION
  spec.authors       = ["Aziz Light"]
  spec.email         = ["aziz@azizlight.me"]
  spec.summary       = "Awesome icons for RubyMotion"
  spec.description   = "RubyMotion wrapper around FontAwesomeKit"
  spec.homepage      = "https://github.com/AzizLight/motion-iconic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "motion-cocoapods", "~> 1.4.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
