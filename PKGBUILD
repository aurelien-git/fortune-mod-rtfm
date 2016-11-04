# Contributor: aurélien DESBRIÈRES <aurelien@hackers.camp>

pkgname=fortune-mod-rtfm
pkgver=20161104
pkgrel=4
pkgdesc="Fortune cookies: Read The Fucking Manual! Because most of people read them to late."
arch=('any')
license=('custom')
depends=('fortune-mod')
groups=('fortune-mods')
source=('fortune-rtfm')
md5sums=('60c61f79673ba6528adb4398ed64bd50')
url="ftp://ftp.hackers.camp/fortune-rtfm"

build() {
  if true; then # change true to false to have pure ASCII quotes
    cp "${srcdir}/fortune-rtfm" "${srcdir}/rtfm"
  else
    sed "s/’/'/g; s/é/e/g; s/è/e/g;" "${srcdir}/fortune-rtfm" > "${srcdir}/rtfm"
  fi
  strfile "${srcdir}/rtfm" "${srcdir}/rtfm.dat"
}

package() {
  install -D -m644 "${srcdir}/rtfm" "${pkgdir}/usr/share/fortune/rtfm"
  install -D -m644 "${srcdir}/rtfm.dat" "${pkgdir}/usr/share/fortune/rtfm.dat"
}

md5sums=('3eb6def3cbff562feb545f73fbc0a0d3')
