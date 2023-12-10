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

### 4 - Install Oh-My-Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 5 - Install powerlevel10k theme
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### 6 - Into .zshrc set:
```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```