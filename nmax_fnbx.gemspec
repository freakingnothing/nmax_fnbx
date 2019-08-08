
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nmax_fnbx/version"

Gem::Specification.new do |spec|
  spec.name          = "nmax_fnbx"
  spec.version       = NmaxFnbx::VERSION
  spec.authors       = ["Elena Filonova"]
  spec.email         = ["freaking.nothing@gmail.com"]

  spec.summary       = %q{short summary}
  spec.homepage      = "https://github.com/freakingnothing/nmax_fnbx"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = "nmax_fnbx"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
