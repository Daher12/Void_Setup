{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "dk";
  home.homeDirectory = "/root";
  targets.genericLinux.enable = true;
  nixpkgs.config.allowUnfreePredicate = _: true;
  xdg.enable=true;
  xdg.mime.enable=true;
  fonts.fontconfig.enable = true;
  # programs.dconf.enable = true;
  # The critical missing piece for me
  xdg.systemDirs.data = [ "${config.home.homeDirectory}/.nix-profile/share/applications" ];  
  programs.bash.enable = true;
  programs.fish.enable = true;
 # services.xserver.enable = true;
  #desktopManager = {
   #            gnome = {
    #             enable = true;
     #          };
  nixpkgs.config.pulseaudio = true;
  services.network-manager-applet.enable = true;

#  gnome = { pkgs, ... }: {
 #         config = {
  #          services.xserver.enable = true;
   #         services.xserver.displayManager.gdm.enable = true;
    #        services.xserver.desktopManager.gnome.enable = true;


  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello
    pkgs.sakura
    pkgs.btop
    pkgs.neofetch
    pkgs.ffmpegthumbnailer
    pkgs.ffmpeg   
#    pkgs.firewalld-gui
    pkgs.unrar
    pkgs.p7zip
    pkgs.vlc
    pkgs.android-file-transfer
    pkgs.git
    pkgs.peazip
    pkgs.waybar
    pkgs.rofi
    pkgs.gtklock
    pkgs.swaybg
    pkgs.gtk-layer-shell
    pkgs.gtkmm3
  #  pkgs.make
      pkgs.alacritty
    # pkgs.gnome.gnome-tweaks
    pkgs.loupe
    pkgs.gedit
    pkgs.gnome.nautilus
    pkgs.gnome.file-roller
#    pkgs.tlp
 #   pkgs.tailscale
#    pkgs.wireplumber
#    pkgs.pipewire
    pkgs.sbctl
#    pkgs.alsa-firmware
#    pkgs.alsa-utils
#    pkgs.chrony


    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })




    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/dk/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
