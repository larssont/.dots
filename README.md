# .dots

My dotfiles.

## Installation

Automatic installation with [dotbot](https://github.com/anishathalye/dotbot).

**via `curl`**
```
curl -sL https://raw.githubusercontent.com/larssont/.dots/main/install/install.sh | bash
```

**via `wget`**
```
wget -O - https://raw.githubusercontent.com/larssont/.dots/main/install/install.sh | bash
```

### Git 

Configure Git user:
```
git config -f ~/.dots/programs/git/.gitconfig_local user.name "Name"
git config -f ~/.dots/programs/git/.gitconfig_local user.email "Email"
```

### Fish 🐟

Install fisher plugin manager:
```
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

Install/update plugins:

```
fisher update
```

### Neovim 📗

Install plugins:
```
:PlugInstall
```

## License
See [LICENSE](LICENSE)
