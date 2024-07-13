# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit pypi distutils-r1

DESCRIPTION="Compatibility layer for NumPy to support the Array API"
HOMEPAGE="https://github.com/data-apis/array-api-compat"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~amd64-linux"

DEPEND="
	test? (
		dev-python/jax[${PYTHON_USEDEP}]
	)
	dev-python/numpy[${PYTHON_USEDEP}]
"

RESTRICT="test" # relative import error, jax ebuild not avail
distutils_enable_tests pytest
