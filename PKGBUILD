# Maintainer (Parabola) : Aurélien DESBRIÈRES <aurelien@hackers.camp>

_pkgname=paraboley
pkgname=${_pkgname}-git
pkgver=6
pkgrel=1
pkgdesc="Python script to display system infomation alongside the Parabola GNU / Linux-libre logo."
arch=('any')
url="https://projects.parabola.nu/paraboley.git"
license=('GPL')
depends=('python')
makedepends=('git' 'python-distribute')
optdepends=(
'python-mpd-git: python libary for mpd interaction',
'python-logbook-git: for logging'
'imagemagick: for default screenshot command'
)
conflicts=()
provides=('paraboley')
source=("git://projects.parabola.nu/paraboley.git")
md5sums=('SKIP')

pkgver() {
	cd ${_pkgname}
    git rev-list --count HEAD
}

package() {
	cd "$_pkgname"
	python setup.py install --root=${pkgdir}
	install -D -m644 COPYING ${pkgdir}/usr/share/licenses/paraboley/COPYING
}
