# Atomic Dev

Atomic Dev is a project designed to provide a launching off point for getting started with development of Budgie Desktop itself. Atomic Dev is built on top of ostree / OCIs for [Fedora Onyx](https://fedoraproject.org/onyx/), the Fedora atomic desktop spin released with Budgie Desktop.

[![Chat with us on Matrix](https://img.shields.io/badge/chat-on%20Matrix-%230098D4)](https://matrix.to/#/#buddies-of-budgie:matrix.org)
[![Website](https://img.shields.io/website?url=https%3A%2F%2Fbuddiesofbudgie.org&style=flat-square)](https://buddiesofbudgie.org)

[![](https://opencollective.com/buddies-of-budgie/tiers/backer.svg?avatarHeight=96)](https://opencollective.com/buddies-of-budgie)

## Info

This image will ship with all the dependencies required for the development of Budgie Desktop. If you are not developing for Budgie Desktop, **this image is not for you**, go with Fedora Onyx instead if you are looking for an atomic desktop, or check out our [Getting Budgie](https://docs.buddiesofbudgie.org/user/getting-budgie/) for a bunch of other really awesome operating systems. If you are already developing or wanting to develop for Budgie Desktop, however wishing to use another operating system or Fedora Budgie Spin (mentioning explicitly as it is the non-atomic spin), check out our [Building Budgie Desktop](https://docs.buddiesofbudgie.org/developer/workflow/building-budgie-desktop) documentation.

This project leverages Fedora OSTree desktop images and Fedora's OCI support to build a container image which are leveraged as the "transport mechanism for bootable operating system". See [ostree native containers](https://coreos.github.io/rpm-ostree/container/) for more details. These images are built daily.

### Important

As we expand Budgie Desktop's capabilities and shift its architecture, the packages provided in this image will change. You may still wish to follow the above linked Building Budgie Desktop doc for any packages which may not be served by Fedora's repo and require building from source. As Budgie shifts to development of Budgie 11 series, it should _also_ be expected that we will cease installation of packages in this image that are designed for Budgie 10 development, as the focus will be fully placed into 11.

### What It Is Not

This image is **not** and will never be designed to effectively be a "Budgie OS". The only defaults it has are the result of Fedora Onyx, which is designed to be used out-of-the-box by end users. This image is strictly intended to ease getting a development environment set up without layering many packages. If you looking for a "Budgie OS", simply go to the Getting Budgie page linked in this README and pick what you are most comfortable with!

## Usage

To use the Atomic Dev images, you must first install [Fedora Onyx](https://fedoraproject.org/onyx/).

After installation of Onyx, run the following command, after which you can install packages and update via rpm-ostree as you would normally:

```
rpm-ostree rebase ostree-unverified-image:registry:ghcr.io/buddiesofbudgie/atomic-dev:latest
```

To build your own images on top of atomic-dev, define your own Containerfile with the following `FROM` and feel free to get inspired by the workflow files.

```
FROM ghcr.io/buddiesofbudgie/atomic-dev:latest
```

## License

Atomic Dev is inspired by [Timothée Ravier's fedora-kinoite](https://github.com/travier/fedora-kinoite/) images, with their work being used as a reference point for image building, as well as taking inspiration from the [Universal Blue](https://universal-blue.org/) project. As it is so heavily inspired by Timothée's repository, it follows the same licensing of MIT.
