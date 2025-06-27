#!/bin/bash
set -e

# Build .pkg using pkgbuild
pkgbuild \
  --identifier com.neoncovenant.sslinstaller \
  --version 1.0 \
  --root pkg_payload \
  --scripts scripts \
  sslserver-installer.pkg

# Create DMG with background
hdiutil create -volname "NeonCovenant Installer" \
  -srcfolder . \
  -fs HFS+ -format UDZO sslserver-installer.dmg
