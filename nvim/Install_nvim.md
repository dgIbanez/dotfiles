## NeoVim 0.9.4

i've selected the appimage method to install neovim, you can choose another if you prefer.

#### 1 - Download the appimage
[Nvim repo](https://github.com/neovim/neovim/releases/tag/stable) <br>
[Appimage](https://github.com/neovim/neovim/releases/download/stable/nvim.appimage)

#### 2 - Assign execute permissions to appimage
```bash
chmod a+x nvim.appimage
```
#### 3 - To have access to nvim from anywhere copy it to `/usr/bin/nvim`
```bash
sudo mv nvim.appimage /usr/bin/nvim
```
