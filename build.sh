#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install \
    gnome-tweaks \
    unrar \
    aria2 \
    neofetch \
    lm_sensors \
    sstp-client \
    NetworkManager-sstp \
    NetworkManager-sstp-gnome \
    screen

# this would install a package from rpmfusion
# rpm-ostree install vlc

#### System Settings
sed -i 's/\.ext/.jxl/' /etc/dconf/db/local.d/01-background && \
    rm -rf /usr/share/gnome-shell/extensions/background-logo@fedorahosted.org && \
    systemctl enable dconf-update.service && \
    systemctl enable flatpak-add-flathub-repo.service && \
    systemctl enable flatpak-replace-fedora-apps.service && \
    systemctl enable flatpak-cleanup.timer && \
    systemctl enable rpm-ostreed-automatic.timer && \
    systemctl enable podman.socket

