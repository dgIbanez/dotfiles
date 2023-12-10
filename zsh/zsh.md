# ZSH

## Guide to change from bash to zsh

### 1 - Install zsh
```bash
sudo apt install zsh
```

### 2 - Veriry if zsh has been installed properly
```bash
zsh --version
```

### 3 - Change default shell to zsh
```bash
chsh -s $(which zsh)
```

## Install Oh-My-Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```