# Dotfile Configs

## Prerequisites

- Window Server: [x-org](https://www.x.org/wiki/)
- Window Manager: [bspwm](https://github.com/baskerville/bspwm)
- Window Compositor: [picom-git](https://github.com/yaocccc/picom)
- Launcher: [rofi](https://github.com/davatorium/rofi)
- Terminal: [alacrity](https://github.com/alacritty/alacritty)
- Terminal Multiplexer: [tmux](https://github.com/tmux/tmux)
- Shell: [fish](https://github.com/fish-shell/fish-shell)
- Editor: [neovim](https://github.com/neovim/neovim)
- Browser: [google-chrome](https://aur.archlinux.org/packages/google-chrome)
- File Explorer
  - [lf(terminal)](https://github.com/gokcehan/lf)
  - [nautilus(gui)](https://wiki.gnome.org/Apps/Files)
- Screenshot: [flameshot](https://github.com/flameshot-org/flameshot)
- Video:
  - xf86-video-[admgpu/intel/nouveau]
  - [brightnessctl](https://github.com/Hummer12007/brightnessctl)
- Audio:
  - [alsa-utils](https://www.alsa-project.org/wiki/Main_Page)
- Network:
  - [iwd](https://git.kernel.org/pub/scm/network/wireless/iwd.git/)
  - [dhcpcd](https://roy.marples.name/projects/dhcpcd/)

Optional:

- Fuzzy Finder: fzf
- Grep Alternative: ripgrep
- File Manager: lf
- Cat Alternative: bat
- find alternative: fd

```bash
# Install Basic
pacman -S stow
pacman -S xorg xorg-xinit bspwm rofi alacritty
pacman -S tmux fish neovim lf nautilus flameshot
pacman -S xf86-video-amdgpu brightnessctl alsa-utils
pacman -S iwd dhcpcd
yay -S google-chrome
pacman -S fzf ripgrep lf bat fd
```

```bash
# Install Tools
pacman -S sxhkd
pacman -S betterlockscreen
pacman -S nitrogen
pacman -S fcitx5
pacman -S antidot
pacman -S polybar
pacman -S playerctl
pacman -S awk
pacman -S imwheel
```

```bash
# Install Picom
git clone git@github.com:yaocccc/picom.git
cd picom
pacman -S meson ninja libev uthash libconfig
git submodule update --init --recursive
meson --buildtype=release . build
sudo ninja -C build install
```

## Installation

```bash
git clone --recursive git@github.com:wwxiaoqi/dotfiles
cd dotfiles
./install.sh
```
