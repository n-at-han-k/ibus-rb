# frozen_string_literal: true

# Released under the Apache License, Version 2.0.
# Copyright, 2026, by General Intelligence Systems.

module IBus
  # Defines everything in the IBus namespace from `IBus-1.0.typelib`.
  #
  # Modelled on ruby-gnome's own loaders -- see
  # gtksourceview5/lib/gtksourceview5/loader.rb for one that has to call the
  # library's init function before anything works, and
  # libsecret/lib/libsecret/loader.rb for one that does not.
  #
  # The version string is the typelib's, which is not always the library's
  # release number and is not guessable: this one is "1.0", read off
  # `IBus-1.0.typelib` rather than inferred.
  class Loader < GObjectIntrospection::Loader
    def load
      self.version = "1.0"
      super("IBus")
    end

    private

    # A Ruby constant has to begin with an uppercase letter, and this typelib
    # has names that do not. IBus-1.0 declares a constant literally named `0`.
    # The default loader calls const_set regardless, which raises NameError
    # (or warns, for a lowercase name) and aborts the load partway through.
    #
    # ruby-gnome's own loaders override this hook for the same reason -- see
    # vte4 and webkit-gtk, which redirect `*_VERSION` constants into a Version
    # module. Here the values are kept in a hash rather than dropped, so
    # nothing in the typelib becomes unreachable.
    def load_constant_info(info)
      if /\A[A-Z]/.match?(info.name)
        super
      else
        IBus::UNNAMEABLE_CONSTANTS[info.name] = info.value
      end
    end

    def post_load(repository, namespace)
      require_libraries
    end

    def require_libraries
      # Nothing yet. Hand-written Ruby that improves on what the typelib gives
      # -- an each that yields, a to_s, a keyword-argument constructor -- goes
      # in files required from here, which is the convention ruby-gnome uses
      # for exactly that purpose.
    end
  end
end
