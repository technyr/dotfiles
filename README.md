# dotfiles

My Arch Linux setup: i3, polybar, WezTerm and fastfetch.


## What's in here

| Path | What it is |
|---|---|
| `.config/i3/` | i3 window manager config (Win key as `$mod`) |
| `.config/polybar/` | Top bar with workspaces, centered clock and date, music, volume, CPU and memory |
| `.config/i3status/` | Status config for the stock i3 bar |
| `.config/wezterm/` | WezTerm: 50% transparency, JetBrainsMono Nerd Font, tab shortcuts |
| `.config/fastfetch/` | fastfetch with red labels |

## Packages

```sh
sudo pacman -S --needed i3-wm polybar wezterm fastfetch \
  ttf-jetbrains-mono-nerd playerctl pavucontrol chafa
```

## Install

Back up your own configs first, then copy these in:

```sh
git clone https://github.com/technyr/dotfiles.git ~/dotfiles
cp -r ~/dotfiles/.config/* ~/.config/
chmod +x ~/.config/polybar/launch.sh
i3-msg restart
```

## Keybinds

- WezTerm: `Ctrl+Q` quit, `Ctrl+T` new tab, `Ctrl+W` close tab, `Ctrl+Tab` next tab
- i3: `Win` is the modifier, so `Win+Enter` opens a terminal and `Win+Shift+R` reloads

## Notes

- Polybar starts through `launch.sh`, which kills any old instance first so restarts don't stack bars.
- Icons need a Nerd Font. If you see boxes, install `ttf-jetbrains-mono-nerd` and restart the app.
- Some paths may point at `/home/archix`, so change them to your own home directory.
