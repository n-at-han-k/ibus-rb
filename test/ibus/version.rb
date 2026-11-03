# frozen_string_literal: true

# Released under the Apache License, Version 2.0.
# Copyright, 2026, by General Intelligence Systems.

require "ibus/version"

describe Ibus do
  it "has a version" do
    expect(Ibus::VERSION).to be =~ /\A\d+\.\d+\.\d+\z/
  end
end
