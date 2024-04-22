# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{6..11} )

inherit pypi distutils-r1

DESCRIPTION="A Python object for standardized reference genome assets"
HOMEPAGE="https://pypi.org/project/refgenconf/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-python/jsonschema[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/rich[${PYTHON_USEDEP}]
	dev-python/yacman[${PYTHON_USEDEP}]
	sci-biology/pyfaidx[${PYTHON_USEDEP}]"

distutils_enable_tests pytest
