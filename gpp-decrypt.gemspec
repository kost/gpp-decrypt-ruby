# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gpp/decrypt/version'

Gem::Specification.new do |spec|
  spec.name          = "gpp-decrypt"
  spec.version       = Gpp::Decrypt::VERSION
  spec.authors       = ["Vlatko Kosturjak"]
  spec.email         = ["kost@linux.hr"]

  spec.summary       = %q{Group Policy Preferences (GPP) password decryption}
  spec.description   = %q{Group Policy Preferences (GPP) password decryption. gpp-decrypt is tool released by Chris Gates on Friday, October 19, 2012. Gemification by Kost}
  spec.homepage      = "https://github.com/kost/gpp-decrypt-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
