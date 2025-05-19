# MacOS Dotfiles

A collection of my MacOS dotfiles.

## Installation

You will need git and GNU stow for installing this with ease.

```
brew install git stow
```

After installing the "requirements" you can create symlinks by

1. Cloning this repo with

```
git clone https://github.com/Testspieler09/dotfiles.git
```

2. Creating the symlinks with

```
stow target=<PATH_TO_HOME> .
```

> [!NOTE]
> The keymap `<leader>sn` for searching through the nvim config won't work when creating a symlink for nvim.
> Therefore consider moving the config into the `~/.config` folder instead
