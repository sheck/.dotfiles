{
  packageOverrides = pkgs: with pkgs; {
    sheckPackages = pkgs.buildEnv {
      name = "sheck-packages";
      paths = [
        bat
        watchman
        delta
        silver-searcher
        rcm
      ];
    };
  };
}
