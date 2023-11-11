FROM quay.io/fedora-ostree-desktops/onyx:39

LABEL org.opencontainers.image.title="atomic-dev"
LABEL org.opencontainers.image.description="Fedora Budgie Atomic development images"
LABEL org.opencontainers.image.source=https://github.com/BuddiesOfBudgie/atomic-dev
LABEL org.opencontainers.image.licenses=MIT

RUN rpm-ostree install \
  accountsservice-devel \
  alsa-lib-devel \
  desktop-file-utils \
  gettext \
  git \
  glib2-devel \
  gnome-bluetooth3.34-libs-devel \
  gnome-desktop3-devel \
  gnome-menus-devel \
  gnome-settings-daemon-devel \
  gobject-introspection-devel \
  gsettings-desktop-schemas-devel \
  gstreamer1-devel \
  gtk-doc \
  gtk3-devel \
  ibus-devel \
  intltool \
  json-glib-devel \
  libcanberra-devel \
  libgee-devel \
  libnotify-devel \
  libpeas-devel \
  libSM-devel \
  libuuid-devel \
  libwnck3-devel \
  libX11-devel \
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
  ostree container commit