{ pkgs, ... }:

{
  home.packages = [
    pkgs.ghostty
  ];

  xdg.configFile."ghostty/config".text = ''
    font-family = JetBrainsMono Nerd Font
    font-size = 12

    theme = Kanagawa Dragon

    background-opacity = 0.92
    background-opacity-cells = true

    window-padding-x = 10
    window-padding-y = 10
    window-padding-balance = true
    window-decoration = auto

    cursor-style = block
    cursor-style-blink = false

    copy-on-select = clipboard
    selection-clear-on-copy = false
    app-notifications = no-clipboard-copy
    keybind = ctrl+v=paste_from_clipboard

    scrollback-limit = 50000

    command = bash -l

    confirm-close-surface = false
    mouse-hide-while-typing = true

    keybind = ctrl+backspace=text:\x17
    keybind = ctrl+shift+c=copy_to_clipboard
    keybind = ctrl+shift+v=paste_from_clipboard

    shell-integration-features = true
  '';
}
