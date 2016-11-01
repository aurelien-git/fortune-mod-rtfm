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
md5sums=('573a566bcc133adac789bfe4f6b4a3d2')
url="ftp://ftp.hackers.camp/fortune-security"

build() {
  if true; then # change true to false to have pure ASCII quotes
    cp "${srcdir}/fortune-security" "${srcdir}/security"
  else
    sed "s/’/'/g; s/é/e/g; s/è/e/g;" "${srcdir}/fortune-security" > "${srcdir}/security"
  fi
  strfile "${srcdir}/security" "${srcdir}/security.dat"
}

package() {
  install -D -m644 "${srcdir}/security" "${pkgdir}/usr/share/fortune/security"
  install -D -m644 "${srcdir}/security.dat" "${pkgdir}/usr/share/fortune/security.dat"
}
md5sums=('573a566bcc133adac789bfe4f6b4a3d2')
