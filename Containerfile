FROM quay.io/fedora-ostree-desktops/onyx:39

LABEL org.opencontainers.image.title="atomic-dev"
LABEL org.opencontainers.image.description="Fedora Budgie Atomic development images"
LABEL org.opencontainers.image.source=https://github.com/BuddiesOfBudgie/atomic-dev
LABEL org.opencontainers.image.licenses=MIT

RUN rpm-ostree install \
  accountsservice-devel \
  alsa-lib-devel \
  clang \
  desktop-file-utils \
  gettext \
  git \
  gnome-desktop3-devel \
  gnome-settings-daemon-devel \
  gobject-introspection-devel \
  gsettings-desktop-schemas-devel \
  gstreamer1-devel \
  gtk-doc \
  ibus-devel \
  intltool \
  json-glib-devel \
  libcanberra-devel \
  libgee-devel \
  libnotify-devel \
  libpeas1-devel \
  libSM-devel \
  libuuid-devel \
  libwnck3-devel \
  libX11-devel \
  libxfce4windowing-devel \
  libXtst-devel \
  magpie-devel \
  meson \
  polkit-devel \
  pulseaudio-libs-devel \
  sassc \
  upower-devel \
  vala \
  xorg-x11-xtrans-devel && \
  rm -rf /var/lib/unbound/root.key && \
  ln -sfv /usr/bin/ld.bfd /usr/bin/ld && \
  ostree container commit
