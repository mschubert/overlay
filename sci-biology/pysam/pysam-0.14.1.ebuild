# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} )

inherit distutils-r1

DESCRIPTION="Python interface for the SAM/BAM sequence alignment and mapping format"
HOMEPAGE="https://github.com/pysam-developers/pysam
	https://pypi.org/project/pysam/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="=sci-libs/htslib-1.7*:="
DEPEND="${RDEPEND}
	dev-python/cython[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"

python_prepare_all() {
	export HTSLIB_MODE="external"
	export HTSLIB_INCLUDE_DIR="${EPREFIX}"/usr/include
	export HTSLIB_LIBRARY_DIR="${EPREFIX}"/usr/$(get_libdir)
	distutils-r1_python_prepare_all
}

src_compile() {
	# TODO
	# empty compile, as the build system runs the whole build again in install
	:
}
