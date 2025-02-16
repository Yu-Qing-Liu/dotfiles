{ pkgs, ... }: {
  
  imports = [
    ./nvim
    ./hypr
    ./rofi
    ./waybar
    ./alacritty
    ./zsh
    ./vivid
    ./ranger
  ];

  home = {
    username = "admin";
    homeDirectory = "/home/admin";
  };

  home.packages = (with pkgs; [
    # Firmware
    alsa-lib
    sof-firmware
    # Commands
    util-linux
    lazygit
    neofetch
    tree
    wget
    curl
    vivid
    highlight
    less
    zip
    unzip
    xorg.xhost
    openssl
    doxygen
    psmisc
    # Applications
    imv
    gparted
    zsh
    firefox
    alacritty
    ranger
    git
    wl-clipboard
    pavucontrol
    prismlauncher
    rofi-wayland
    wtype
    obs-studio
    vlc
    libreoffice-qt6
    # Hypr
    hyprlock
    hyprpaper
    hyprshot
    # Fonts
    noto-fonts
    nerd-fonts.noto
    font-awesome
    # Neovim dependencies
    lua51Packages.luarocks
    lua51Packages.lua-lsp
    lua51Packages.lua
    nodejs_23
    ripgrep
    fd
    zathura
    texliveFull
    tree-sitter
    gnumake
    gcc
    # Programming
    yarn
    rustup
    python312
    python312Packages.numpy
    python312Packages.pycocotools
    python312Packages.opencv4
  ]);

  fonts = {
    fontconfig= {
      enable = true;
    };
  };
  
  programs.home-manager.enable = true;

  home.stateVersion = "25.05";
}
