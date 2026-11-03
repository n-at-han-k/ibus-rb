# frozen_string_literal: true

# Released under the Apache License, Version 2.0.
# Copyright, 2026, by General Intelligence Systems.

# There is no compile task. This gem is pure Ruby: the binding is
# GObjectIntrospection::Loader reading ibus's typelib at require time, so
# there is no extension, no Cargo workspace and no per-platform gem to build.
# `gem install ibus` wants no toolchain.

require "rake/testtask"

task :test do
  sh "bin/test"
end

task default: :test
