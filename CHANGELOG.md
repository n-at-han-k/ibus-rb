# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0] - 2026-11-03

### Added

- `IBus`, defined from the `IBus-1.0.typelib` GObject Introspection typelib at require
  time, giving IBus, the input method framework. `IBus::Loader` is a
  `GObjectIntrospection::Loader` subclass, so the binding is the whole
  namespace rather than a hand-written subset, and it does not drift as the
  library gains API.
- A dev shell (`flake.nix`) that pins the library and everything its typelib
  declares from one nixpkgs, and CI that runs the suite inside it. The
  environment is the hard part of an introspection binding: a typelib built
  against a different glib than the `gobject-introspection` gem registers GIO
  twice in the process and fails with
  `cannot register existing type 'GTlsCertificate'`.
- A README naming the distribution package that carries the typelib, and a
  worked `flake.nix` listing every nix dependency. The list is the gem's own
  search path, so it cannot drift from what the dev shell uses.

### Notes

- Pure Ruby: no extension, no Cargo workspace, no per-platform gem. Installing
  does still compile C, because `glib2` and `gobject-introspection` are
  native extensions built against glib — but this gem adds no build step of its
  own, and those two are what every ruby-gnome application already has via
  `gtk4`.
- The typelib version is `1.0`, read off `IBus-1.0.typelib` rather than
  inferred. These are not guessable, and guessing is how a loader silently
  fails.
