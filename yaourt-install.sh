# Build package-query under /tmp
# NOTE: do `pacman -S base-devel` first to make sure you're ready to 'devel'.
cd /tmp
wget https://aur4.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
tar xvf package-query.tar.gz
cd package-query/
makepkg -s && makepkg -i

# Now build yaourt itself
cd /tmp
wget https://aur4.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
tar xvf yaourt.tar.gz
cd yaourt/
makepkg -s && makepkg -i

# Done. Version printing to show it worked:
yaourt -V
