# Studio-3t aur

There's an out of date version of [Studio 3T in the AUR](https://aur.archlinux.org/packages/studio-3t). This repo contains a PKGBUILD file to build the latest version of Studio 3T.

This is cloned from https://aur.archlinux.org/studio-3t.git.

I added a script to update the PKGBUILD file with the latest version number and checksums.

All the credit goes to the original author [develerik](https://aur.archlinux.org/account/develerik)  of the PKGBUILD file.

## How to build this

1. clone the repo

```bash
git clone https://github.com/cahva/studio-3t-aur.git
```

2. cd into the repo

```bash
cd studio-3t-aur
```

3. build and install the package

```bash
makepkg --syncdeps --install
```

## How to update to new version of Studio 3T

### Manually
Go to [Studio 3T download page](https://studio3t.com/download/). There you will see the latest version number and the checksums for the different versions.

Select "SHA-256 Checkums" for Linux to download the checksums for the Linux version.

Then, update the `PKGBUILD` file with the new version number and the checksums.

```
pkgver=2024.3.0
sha256sums=('.. INSERT THE NEW CHECKSUM HERE ..')
```

### Automatically

Just run the update-pkgbuild.sh script

```bash
./update-pkgbuild.sh <version>
```

That will replace the version number and checksums in the PKGBUILD file with the new version number and checksums.

I intend to keep this repo up to date with the latest version of Studio 3T.