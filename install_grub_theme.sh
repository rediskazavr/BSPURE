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
sudo pacman -S grub

# Install theme
sudo cp -r ~/BSPURE/gtk/grub/MilkGrub /boot/grub/themes/

# Edit config
cat <<EOF > /etc/default/grub
GRUB_THEME="/boot/grub/themes/MilkGrub/theme.txt"
EOF

# Update Grub
sudo grub-mkconfig -o /boot/grub/grub.cfg