# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )

inherit pypi distutils-r1

DESCRIPTION="Compatibility layer for NumPy to support the Array API"
HOMEPAGE="https://github.com/data-apis/array-api-compat"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
# USE flags for numpy vs cupy?

distutils_enable_tests pytest
