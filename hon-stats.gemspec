# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{honstats}
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = "Lloyd Pick"
  s.date = %q{2009-07-28}
  s.description = %q{HonStats is a Ruby library for extracting player statistics and other information from the Heroes of Newerth master server.}
  s.email = %q{lloydpick@gmail.com}
  s.files = [ "README",
              "lib/honstats.rb",
              "lib/honstats",
              "lib/honstats/character.rb",
              "lib/honstats/game.rb",
              "lib/honstats/server.rb",
              "lib/honstats/ban.rb",
              "lib/honstats/ignore.rb" ]
  s.has_rdoc = false
  s.homepage = %q{https://github.com/lloydpick/hon-stats}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{HonStats is a Ruby Gem for extracting player statistics and other information from the Heroes of Newerth master server.}
end
