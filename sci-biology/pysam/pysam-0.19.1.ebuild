# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{4..11} )

inherit pypi distutils-r1

DESCRIPTION="Python interface for the SAM/BAM sequence alignment and mapping format"
HOMEPAGE="https://github.com/pysam-developers/pysam"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	sci-libs/htslib"

distutils_enable_tests pytest

python_prepare_all() {
	export HTSLIB_MODE="external"
	export HTSLIB_INCLUDE_DIR="${EPREFIX}"/usr/include
	export HTSLIB_LIBRARY_DIR="${EPREFIX}"/usr/$(get_libdir)
	distutils-r1_python_prepare_all
}

#src_compile() {
#	# TODO
#	# empty compile, as the build system runs the whole build again in install
#	:
#}
