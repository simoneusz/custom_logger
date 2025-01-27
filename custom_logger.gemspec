# frozen_string_literal: true

require_relative "lib/custom_logger/version"

Gem::Specification.new do |spec|
  spec.name = "custom_logger"
  spec.version = CustomLogger::VERSION
  spec.authors = ["Ilya"]
  spec.email = ["simonewarlet@gmail.com"]

  spec.summary = "Gem for logging messages"
  spec.description = "This gem is for logging messages"
  spec.homepage = "https://github.com/simoneusz/custom_logger"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://example.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/simoneusz/custom_logger"
  spec.metadata["changelog_uri"] = "https://github.com/simoneusz/custom_logger/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'railties', '~> 7.1.5.1'
end
