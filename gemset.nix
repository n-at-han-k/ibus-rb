{
  gem_kit = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dx9w041lqzr4jd0m9as0v5v6n3fj2hcg74p2gyswr2y2a6zc5v9";
      type = "gem";
    };
    version = "0.2.0";
  };
  gem_kit-release = {
    dependencies = ["gem_kit" "thor"];
    groups = ["release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04ry00iwgsrwq12wszspm22dbdbhwh8qllf90bc2w418mbax28f8";
      type = "gem";
    };
    version = "0.3.3";
  };
  glib2 = {
    dependencies = ["native-package-installer" "pkg-config"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yxjj9ab71yhn7syzfbsk74vzzb1xbchpb0yl9dpcz856c21raqc";
      type = "gem";
    };
    version = "4.4.0";
  };
  gobject-introspection = {
    dependencies = ["glib2"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "032jh10zpwfbzvfpc6mgc7nfw2a7nn84sww1g3c0ma25v4fyhky9";
      type = "gem";
    };
    version = "4.4.0";
  };
  ibus = {
    dependencies = ["gem_kit" "gobject-introspection"];
    groups = ["default"];
    platforms = [];
    source = {
      path = ./.;
      type = "path";
    };
    version = "2.0.0";
  };
  lefthook = {
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0cz3bcnb74a18gv6091lpchqyzknjmlbggyqvbh6vk8lznshad64";
      type = "gem";
    };
    version = "2.2.2";
  };
  native-package-installer = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bvr9q7qwbmg9jfg85r1i5l7d0yxlgp0l2jg62j921vm49mipd7v";
      type = "gem";
    };
    version = "1.1.9";
  };
  pkg-config = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "079fz8vkjrjjmid3k5a6bwp9vssvv3hxm4c8v5121vlmfs65517y";
      type = "gem";
    };
    version = "1.6.6";
  };
  sus = {
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gyacxl3wnk8i4ss4ppp4zran4nr198in0g2iw9ih1yaf7pwh8rj";
      type = "gem";
    };
    version = "0.38.0";
  };
  thor = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wsy88vg2mazl039392hqrcwvs5nb9kq8jhhrrclir2px1gybag3";
      type = "gem";
    };
    version = "1.5.0";
  };
}
