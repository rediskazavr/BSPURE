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

# Install packages
sudo pacman -S xorg xorg-xinit bspwm sxhkd polybar alacritty feh rofi git base-devel neovim fastfetch cava cmatrix firefox thunar tgpt zsh --noconfirm

# Create folders for configs (skip if exists)
mkdir -p ~/.config

# Copy dotfiles (with -r for directories)
cp ~/BSPURE/dotfiles/wallpaper.png ~/.config/
cp -r ~/BSPURE/dotfiles/alacritty/ ~/.config/
cp -r ~/BSPURE/dotfiles/polybar/ ~/.config/
cp -r ~/BSPURE/dotfiles/bspwm/ ~/.config/
cp -r ~/BSPURE/dotfiles/sxhkd/ ~/.config/
chmod +x ~/.config/bspwm/bspwmrc

# Install zsh and Oh My Zsh (for current user, not root)
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Create .zshrc correctly
cat <<EOF > ~/.zshrc
export ZSH="\$HOME/.oh-my-zsh"
ZSH_THEME="bira"
EOF
# .xinitrc
cat <<EOF > ~/.xinitrc
#!/bin/bash
exec bspwm
EOF

# Install yay (as normal user)
cd ~/BSPURE/packages/yay/
makepkg -si --noconfirm

# Install Fonts (yay doesn't need sudo)
yay -S pxplus-ibm-vga8 --noconfirm
fc-cache -fv
clear

# Reboot system
sudo reboot