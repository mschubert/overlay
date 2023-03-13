# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{6..11} )

inherit pypi distutils-r1

DESCRIPTION="Fast, efficiently stored Trie for Python"
HOMEPAGE="https://pypi.org/project/throttler/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/aiohttp[$PYTHON_USEDEP]
	dev-python/flake8[$PYTHON_USEDEP]"

distutils_enable_tests pytest
