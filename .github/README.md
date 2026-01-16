# alacritty

This repository contains my sensible defaults for alacritty.

## Prerequisites

### JetBrainsMono Nerd Font

This configuration uses **JetBrainsMono Nerd Font**. Install it based on your operating system:

**macOS**
```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

**Debian/Ubuntu**
```bash
sudo apt update
sudo apt install -y wget unzip
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
sudo mkdir -p /usr/share/fonts/truetype/jetbrains-mono
sudo unzip JetBrainsMono.zip -d /usr/share/fonts/truetype/jetbrains-mono
sudo fc-cache -fv
rm JetBrainsMono.zip
```

**Arch Linux**
```bash
sudo pacman -S ttf-jetbrains-mono-nerd
```

## Usage

The contents of this repository should be placed in your `$HOME/.config`. 

```bash
git clone https://github.com/dotbrains/alacritty.git $HOME/.config/alacritty
```

## Themes

This configuration includes multiple color themes:

- **Nord** - Arctic, north-bluish color palette
- **Gruvbox** - Retro groove color scheme with warm colors

### Switching Themes

To switch themes, edit the `import` line in `alacritty.toml`:

```toml
# For Nord theme
import = [
    "~/.config/alacritty/theme/nord.toml"
]

# For Gruvbox theme
import = [
    "~/.config/alacritty/theme/gruvbox.toml"
]
```

After changing the theme, Alacritty will automatically reload the configuration.

## License

The code is available under the [MIT license](LICENSE).