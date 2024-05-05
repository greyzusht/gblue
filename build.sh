#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


# Remove undesired packages
# rpm-ostree override remove \
#     gnome-tour \
#     htop \
#     gnome-terminal \
#     gnome-terminal-nautilus \
#     toolbox \
#     xorg-x11-drv-intel
    
    

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
# rpm-ostree install \
#     gcc \
#     libxcrypt-compat \
#     libimobiledevice \
#     make \
#     mesa-libGLU \
#     gnome-tweaks \
#     unrar \
#     p7zip \
#     p7zip-plugins \
#     aria2 \
#     fastfetch \
#     lm_sensors \
#     sstp-client \
#     NetworkManager-sstp \
#     NetworkManager-sstp-gnome \
#     screen \
#     freetype-freeworld \
#     gnome-console \
#     code \
#     docker-ce \
#     docker-ce-cli \
#     containerd.io \
#     docker-buildx-plugin \
#     docker-compose-plugin \
#     docker-compose \
#     python3-pip \
#     wireguard-tools \
#     celluloid

 

# this would install a package from rpmfusion
# rpm-ostree install vlc

#### System Settings
    # systemctl enable flatpak-add-flathub-repo.service && \
    # systemctl enable flatpak-replace-fedora-apps.service && \
    systemctl enable podman.socket

