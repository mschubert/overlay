# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{7..11} )

inherit pypi distutils-r1

DESCRIPTION="Removes adapter sequences from sequencing reads"
HOMEPAGE="https://cutadapt.readthedocs.io/en/stable/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-python/dnaio[${PYTHON_USEDEP}]
	dev-python/xopen[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/cython[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"

distutils_enable_tests pytest
