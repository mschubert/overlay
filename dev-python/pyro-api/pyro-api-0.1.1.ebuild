# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{7..11} )
PYPI_NO_NORMALIZE=1
inherit pypi distutils-r1

DESCRIPTION="Generic API for dispatch to Pyro backends"
HOMEPAGE="https://pyro.ai/api/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

distutils_enable_tests pytest
