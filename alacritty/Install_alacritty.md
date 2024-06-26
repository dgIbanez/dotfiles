# Alacritty 0.13.0-dev (c0c267d6)

This is a guide that collects all steps to build and install Alacritty.

For more detailed explanation, check the official repo: [alacritty/alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)

---

### Alacritty build and installation:

#### 1 - Clone alacritty repo
```bash
# Clone alacritty repo
git clone https://github.com/alacritty/alacritty.git
cd alacritty
```

#### 2 - Install rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

#### 3 - Install dependencies
```bash
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
```

#### 4 - Build Alacritty
```bash
cargo build --release
```

#### 5 - Make sure that Alacritty works well
```bash
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
infocmp alacritty
```

#### 6 - Add desktop entry
```bash
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
```


#### 7 - Dependencies for manual pages: gzip and scdoc
```bash
sudo apt install gzip scdoc
```

#### 8 - Install manual pages(man)
```bash
sudo mkdir -p /usr/local/share/man/man1
sudo mkdir -p /usr/local/share/man/man5
scdoc < extra/man/alacritty.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
scdoc < extra/man/alacritty-msg.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
scdoc < extra/man/alacritty.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty.5.gz > /dev/null
scdoc < extra/man/alacritty-bindings.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty-bindings.5.gz > /dev/null
```

---

### Change default terminal from gnome-terminal to Alacritty:

#### 1 - Add a new entry to update-alternatives
```bash
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/alacritty 1
```

#### 2 - Run this command and select alacritty as default terminal
```bash
sudo update-alternatives --config x-terminal-emulator
```

#### 3 - Revert the change:
If you want to change to another terminal, run the previous command again.
Additionally, you can optionally delete the Alacritty entry:
```bash
sudo update-alternatives --remove x-terminal-emulator /usr/local/bin/alacritty
```
