# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roman_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "roman_parser"
  spec.version       = RomanParser::VERSION
  spec.authors       = ["mraseelak"]
  spec.email         = ["mraseelak@gmail.com"]

  spec.summary       = %q{Gem to parse Roman numerals into Arabic numbers.}
  spec.description   = %q{This is a test project of mine to convert Roman numerals into Arabic numbers.}
  spec.homepage      = "https://github.com/mraseelak/roman_parser.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency 'rake', '~> 11.2', '>= 11.2.2'
end
