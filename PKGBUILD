# Contributor: aurélien DESBRIÈRES <aurelien@hackers.camp>

pkgname=fortune-mod-security
pkgver=20161101
pkgrel=1
pkgdesc="Fortune cookies: Security & Hardening"
arch=('any')
license=('custom')
depends=('fortune-mod')
groups=('fortune-mods')
source=('fortune-security')
url="ftp://ftp.hackers.camp/fortune-security"

build() {
  if true; then # change true to false to have pure ASCII quotes
    cp "${srcdir}/fortune-security" "${srcdir}/fortune-security"
  else
    sed "s/’/'/g; s/é/e/g; s/è/e/g;" "${srcdir}/fortune-security" > "${srcdir}/fortune-security"
  fi
  strfile "${srcdir}/fortune-security" "${srcdir}/fortune-security.dat"
}

package() {
  install -D -m644 "${srcdir}/fortune-security" "${pkgdir}/usr/share/fortune/fortune-security"
  install -D -m644 "${srcdir}/fortune-security.dat" "${pkgdir}/usr/share/fortune/fortune-security.dat"
}
