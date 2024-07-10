# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit pypi distutils-r1

DESCRIPTION="Reference genome resource manager"
HOMEPAGE="https://pypi.org/project/refgenie/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-python/logmuse[${PYTHON_USEDEP}]
	dev-python/piper[${PYTHON_USEDEP}]
	dev-python/yacman[${PYTHON_USEDEP}]
	sci-biology/pyfaidx[${PYTHON_USEDEP}]
	sci-biology/refgenconf[${PYTHON_USEDEP}]"

RESTRICT="test"
#distutils_enable_tests pytest # no tests collected
