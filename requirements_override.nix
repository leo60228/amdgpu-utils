{ pkgs, python }:

let
    stdenv = pkgs.stdenv;
    lshw = pkgs.lshw;
    pygobject3 = pkgs.python3Packages.pygobject3;
    dbus-python = pkgs.python3Packages.dbus-python;
    gtk3 = pkgs.gtk3;
    glib = pkgs.glib;
    wrapGAppsHook = pkgs.wrapGAppsHook;
    gobject-introspection = pkgs.gobject-introspection;
    gnome3 = pkgs.gnome3;
    pkgconfig = pkgs.pkgconfig;
in self: super: {
    "amdgpu-utils" = python.overrideDerivation super."amdgpu-utils" (old: {
        makeWrapperArgs = [
            "--prefix" "PATH" ":" "${stdenv.lib.makeBinPath [ lshw ]}"
        ];
        nativeBuildInputs = old.nativeBuildInputs ++ [
            gobject-introspection
            gtk3
        ];
        propagatedBuildInputs = old.propagatedBuildInputs ++ [
            glib
            pygobject3
            dbus-python
        ];
        buildInputs = old.buildInputs ++ [
            gnome3.dconf
            gobject-introspection
            gtk3
            wrapGAppsHook
            pkgconfig
        ];
        propagatedUserEnvPkgs = [
            gnome3.dconf
        ];
        preBuild = ''
            patchShebangs .
        '';
    });
}
