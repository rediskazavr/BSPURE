# $$$$$$$\   $$$$$$\  $$$$$$$\  $$\   $$\ $$$$$$$\  $$$$$$$$\ 
# $$  __$$\ $$  __$$\ $$  __$$\ $$ |  $$ |$$  __$$\ $$  _____|
# $$ |  $$ |$$ /  \__|$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |      
# $$$$$$$\ |\$$$$$$\  $$$$$$$  |$$ |  $$ |$$$$$$$  |$$$$$\    
# $$  __$$\  \____$$\ $$  ____/ $$ |  $$ |$$  __$$< $$  __|   
# $$ |  $$ |$$\   $$ |$$ |      $$ |  $$ |$$ |  $$ |$$ |      
# $$$$$$$  |\$$$$$$  |$$ |      \$$$$$$  |$$ |  $$ |$$$$$$$$\ 
# \_______/  \______/ \__|       \______/ \__|  \__|\________|

# Update system
sudo pacman -Syu

# install pacakges
sudo pacman -S xorg xorg-xinit bspwm sxhkd alacritty feh rofi git base-devel neovim fastfetch cava cmatrix firefox thunar tgpt zsh --noconfirm

# create folders for configs
sudo cd ~/.config/
sudo mkdir bspwm sxhkd alacritty rofi nvim

# copy dotfiles
sudo cp ~/BSPURE/dotfiles/wallpaper/wallpaper.png ~/.config
sudo cp ~/BSPURE/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/
sudo cp ~/BSPURE/dotfiles/bspwm/bspwmrc ~/.config/bspwm/
sudo cp ~/BSPURE/dotfiles/sxhkd/sxhkdrc ~/.config/sxhkd/
sudo cp ~/BSPURE/dotfiles/alacritty/alacritty.toml ~/.config/polybar/

# Install zsh
sudo chsh -s $(which zsh)
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo echo "export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
source $ZSH/oh-my-zsh.sh" > ~/.zshrc

# Install yay
sudo cd ~/BSPURE/packages/yay/
sudo makepkg -si

# Install Fonts
sudo yay -Syu
sudo yay -S pxplus-ibm-vga8
sudo fc-cache -fv
sudo clear

# Reboot system
sudo reboot