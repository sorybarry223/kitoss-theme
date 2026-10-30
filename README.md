# kitoss

An oh-my-zsh theme based on [agnoster](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/agnoster.zsh-theme), with the two-line layout of [bira](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/bira.zsh-theme).

```
╭─ user@host  ~/project   main 
╰─$
```

## Installation

1. Install zsh, git and curl:

   ```sh
   # RHEL / Rocky / Fedora
   sudo dnf install -y zsh git curl
   # Debian / Ubuntu
   sudo apt install -y zsh git curl
   # macOS (zsh and curl are preinstalled)
   xcode-select --install   # provides git
   ```

2. Install oh-my-zsh:

   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. Install the theme:

   ```zsh
   curl -fsSL https://raw.githubusercontent.com/sorybarry223/kitoss-theme/main/kitoss.zsh-theme \
     -o "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/kitoss.zsh-theme"
   ```

4. Use a [Powerline / Nerd Font](https://www.nerdfonts.com/) (e.g. MesloLGS NF) in your terminal.

   On macOS, install it with [Homebrew](https://brew.sh/):

   ```sh
   brew install --cask font-meslo-lg-nerd-font
   ```

   Then select **MesloLGS Nerd Font** in your terminal:

   - **Terminal.app**: Terminal → Settings… → Profiles → Text → Font → Change…
   - **iTerm2**: iTerm2 → Settings… → Profiles → Text → Font
   - **VS Code / Cursor**: set `"terminal.integrated.fontFamily": "MesloLGS Nerd Font"` in your settings

   To check, run `echo "\ue0b0 \ue0a0"`: you should see an arrow and a branch icon, not boxes.

## Activation

In `~/.zshrc`, replace the `ZSH_THEME` line with:

```zsh
ZSH_THEME="kitoss"
```

Then:

```zsh
source ~/.zshrc
```

## Uninstall

In `~/.zshrc`, set `ZSH_THEME` back to another theme (e.g. `ZSH_THEME="robbyrussell"`), then:

```zsh
rm "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/kitoss.zsh-theme"
source ~/.zshrc
```

## License

MIT
